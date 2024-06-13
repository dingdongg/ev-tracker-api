package handlers

import (
	"bytes"
	"ev-tracker/src/bucket"
	"ev-tracker/src/dao/factory"

	"encoding/base64"
	"encoding/json"
	"fmt"
	"io"

	"net/http"
	"strconv"

	ROMparser "github.com/dingdongg/pkmn-rom-parser/v4"
	"github.com/dingdongg/pkmn-rom-parser/v4/rom_writer"
)

type StatResponse struct {
	Hp 			uint	`json:"hp"`
	Atk			uint	`json:"atk"`
	Def 		uint	`json:"def"`
	Spa			uint	`json:"spa"`
	Spd			uint	`json:"spd"`
	Spe			uint	`json:"spe"`
}

func (sr StatResponse) Compress(elemBits uint) uint {
	var values = [6]uint{sr.Hp, sr.Atk, sr.Def, sr.Spe, sr.Spa, sr.Spd}

	compressed := uint(0)
	for i, s := range values {
		val := s << (uint(i) * elemBits)
		compressed |= val
	}

	return compressed
}

type PokemonResponse struct {
	Id			string	`json:"id"`
	SpriteUrl	string	`json:"spriteUrl"`
	Level 		uint 	`json:"level"`
	Name		string	`json:"name"`
	Ability 	string 	`json:"ability"`
	HeldItem 	string	`json:"heldItem"`
	Nature		string	`json:"nature"`
	EffortValues StatResponse	`json:"effortValues"`
	IndivValues  StatResponse 	`json:"indivValues"`
	BattleStats	 StatResponse	`json:"battleStats"`
	BaseStats 	 StatResponse 	`json:"baseStats"`
}

type AuthPayload struct {
	Authenticated bool `json:"authenticated"`
	UserId string `json:"userId"`
}

type UpdateSavefilePayload struct {
	Requests []PokemonResponse `json:"requests"`
	UserId string `json:"userId"`
}

func addHeaders(w http.ResponseWriter) {
	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")
	w.Header().Add("Content-Type", "application/json")
}

// return all party pokemon info in JSON format 
// upload savefile to s3 if user is authenticated
func ReadSaveFileHandler(w http.ResponseWriter, r *http.Request) {
	addHeaders(w)
	r.Body = http.MaxBytesReader(w, r.Body, 1 << 20)

	if r.Method != "POST" {
		w.WriteHeader(http.StatusMethodNotAllowed)
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}

	if err := r.ParseMultipartForm(1 << 19); err != nil {
		fmt.Println("FILE TOO BIG TO PARSE: ", err)
		w.WriteHeader(http.StatusBadRequest)
		w.Write([]byte(`{"message":"ERROR: file too big"}`))
		return
	}

	var buf bytes.Buffer

	file, header, err := r.FormFile("savefile")
	if err != nil {
		fmt.Println("BRUH: ", err)
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"INTERNAL SERVER ERROR"}`))
		return
	}
	defer file.Close()

	fmt.Printf("filename: %s\n", header.Filename)

	authFile, _, err := r.FormFile("authState")
	if err != nil {
		fmt.Println("AUTH STATE ERROR: ", err)
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"INTERNAL SERVER ERROR"}`))
		return
	}
	defer authFile.Close()

	var authPayload AuthPayload

	decoder := json.NewDecoder(authFile)
	decoder.Decode(&authPayload)

	fmt.Printf("authenticated? %v\n", authPayload)

	io.Copy(&buf, file)

	// TODO FIGURE THIS OUT!!!!!
	if (authPayload.Authenticated) {
		client, err := bucket.New()
		if err != nil {
			fmt.Println(err)
			w.WriteHeader(http.StatusInternalServerError)
			w.Write([]byte(`{"message":"ERROR: internal server error"}`))
			return
		}

		err = client.PutInBucket("ev-tracker-savefiles", bucket.CloudItem{
			Id: authPayload.UserId,
			Value: buf.Bytes(),
		})

		if err != nil {
			fmt.Println(err)
			w.WriteHeader(http.StatusInternalServerError)
			w.Write([]byte(`{"message":"ERROR: internal server error"}`))
			return
		}

		fmt.Println("pushed file to s3")
	}

	results, err := ROMparser.Parse(buf.Bytes())
	if err != nil {
		fmt.Println("PARSING FAILED: ", err)
		w.WriteHeader(http.StatusBadRequest)
		w.Write([]byte(`{"message":"ERROR: invalid file"}`))
		return
	}

	fmt.Println("parsed savefile")

	var res []PokemonResponse
	dao := factory.New()

	for _, p := range results {
		pkmn := dao.GetOne(uint(p.PokedexId))

		res = append(res, PokemonResponse{
			strconv.Itoa(int(p.PokedexId)),
			fmt.Sprintf("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/%d.png", p.PokedexId),
			p.Level,
			p.Name,
			p.Ability,
			p.Item,
			p.Nature,
			StatResponse{
				p.EVs.Hp,
				p.EVs.Attack,
				p.EVs.Defense,
				p.EVs.SpAttack,
				p.EVs.SpDefense,
				p.EVs.Speed,
			},
			StatResponse{
				p.IVs.Hp,
				p.IVs.Attack,
				p.IVs.Defense,
				p.IVs.SpAttack,
				p.IVs.SpDefense,
				p.IVs.Speed,
			},
			StatResponse{
				p.Stats.Hp,
				p.Stats.Attack,
				p.Stats.Defense,
				p.Stats.SpAttack,
				p.Stats.SpDefense,
				p.Stats.Speed,
			},
			StatResponse{
				pkmn.BaseHp,
				pkmn.BaseAtk,
				pkmn.BaseDef,
				pkmn.BaseSpA,
				pkmn.BaseSpD,
				pkmn.BaseSpe,
			},
		})
	}

	fmt.Println("transformed response into DTOs")

	json.NewEncoder(w).Encode(res)
	fmt.Println("wrote bytes to client")
}

func UpdateSaveFileHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")

	if r.Method != "POST" {
		w.WriteHeader(http.StatusMethodNotAllowed)
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}
	var yuh UpdateSavefilePayload

	decoder := json.NewDecoder(r.Body)
	decoder.Decode(&yuh)

	fmt.Printf("UNMARSHAL'D: %v\n", yuh)

	// TODO: make use of goroutines later to concurrently fetch S3 savefile
	client, err := bucket.New()
	if err != nil {
		fmt.Println(err)
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"ERROR: internal server error"}`))
		return
	}

	savefile, err := client.GetCloudItem("ev-tracker-savefiles", yuh.UserId)
	if err != nil {
		fmt.Println(err)
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"ERROR: internal server error"}`))
		return
	}

	builder := rom_writer.NewRequestBuilder()
	
	for i, p := range yuh.Requests {
		fmt.Println(p)

		request, err := builder.AddRequest(uint(i))

		if err != nil {
			fmt.Println(err)
			w.WriteHeader(http.StatusInternalServerError)
			w.Write([]byte(`{"message":"ERROR: internal server error"}`))
			return
		}

		request.WriteBattleStats(p.BattleStats.Hp, p.BattleStats.Atk, p.BattleStats.Def, p.BattleStats.Spa, p.BattleStats.Spd, p.BattleStats.Spe)
		request.WriteEV(p.EffortValues)
		request.WriteIV(p.IndivValues)
		request.WriteLevel(p.Level)
		request.WriteNickname(p.Name)

		// TODO: change pkmn-rom-parser interface for writing abilities and held items via their names
	}
	
	res, err := ROMparser.Write(savefile, builder.Buffer)

	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Printf("ERROR WHILE UPDATING SAVEFILE: %v\n", err)
		w.Write([]byte(`{"message":"error hile updatiing savefile"}`))
		return
	}

	b64Response := base64.StdEncoding.EncodeToString(res)

	w.Header().Add("Content-Type", "application/octet-stream")
	w.Header().Add("Content-Disposition", "attachment; filename=\"savefile\"")
	w.Header().Add("Content-Length", fmt.Sprint(len(b64Response)))

	fmt.Println("length of file: ", fmt.Sprint(len(b64Response)))

	flusher, ok := w.(http.Flusher)
	if !ok {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"cannot open flusher"}`))
		return
	}

	fmt.Println("success?")

	w.Write([]byte(b64Response))
	flusher.Flush()
}