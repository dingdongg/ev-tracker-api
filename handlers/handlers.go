package handlers

import (
	"bytes"
	"errors"
	"ev-tracker/src/dao/factory"
	"os"

	"encoding/json"
	"fmt"
	"io"

	"net/http"
	"strconv"

	ROMparser "github.com/dingdongg/pkmn-rom-parser/v4"
	rq "github.com/dingdongg/pkmn-rom-parser/v4/rom_writer/req"
)

type StatResponse struct {
	Hp 			uint	`json:"hp"`
	Atk			uint	`json:"atk"`
	Def 		uint	`json:"def"`
	Spa			uint	`json:"spa"`
	Spd			uint	`json:"spd"`
	Spe			uint	`json:"spe"`
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

type PokemonUpdateRequest struct {
	Name	string
	NewHp	uint
	NewAtk	uint
	NewDef	uint
	NewSpa	uint
	NewSpd	uint
	NewSpe	uint
}

func addHeaders(w http.ResponseWriter) {
	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")
	w.Header().Add("Content-Type", "application/json")
}

// return all party pokemon info in JSON format 
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
	io.Copy(&buf, file)

	results, err := ROMparser.Parse(buf.Bytes())
	if err != nil {
		fmt.Println("PARSING FAILED: ", err)
		w.WriteHeader(http.StatusBadRequest)
		w.Write([]byte(`{"message":"ERROR: invalid file"}`))
		return
	}

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

	json.NewEncoder(w).Encode(res)
}

func writeStat(writeRequest *rq.WriteRequest, stat StatResponse, specifier string) error {
	var values = [6]uint{stat.Hp, stat.Atk, stat.Def, stat.Spe, stat.Spa, stat.Spd}

	switch specifier {
	case "BATTLE_STAT":
		writeRequest.WriteBattleStats(stat.Hp, stat.Atk, stat.Def, stat.Spa, stat.Spd, stat.Spe)
	case "EV": {
		packedEV := uint(0)
		for i, s := range values {
			val := s << (i * 8)
			packedEV |= val
		}
		writeRequest.WriteEV(packedEV)
	}
	case "IV": {
		packedIV := uint(0)
		for i, s := range values {
			val := s << (i * 8)
			packedIV |= val
		}
		writeRequest.WriteIV(packedIV)
	}
	default:
		return errors.New("writeStat() - invalid specifier")
	}

	return nil
}

func UpdateSaveFileHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")

	if r.Method != "POST" {
		w.WriteHeader(http.StatusMethodNotAllowed)
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}
	var yuh []PokemonResponse

	var req []byte
	decoder := json.NewDecoder(r.Body)
	decoder.Decode(&yuh)

	fmt.Printf("req: %v\n", req)
	fmt.Printf("UNMARSHAL'D: %v\n", yuh)

	writeReqs := make([]rq.WriteRequest, 0)
	
	for i, p := range yuh {
		fmt.Println(p)

		writeRequest := rq.NewWriteRequest(uint(i))

		writeStat(&writeRequest, p.BattleStats, "BATTLE_STAT")
		writeStat(&writeRequest, p.EffortValues, "EV")
		writeStat(&writeRequest, p.IndivValues, "IV")
		writeRequest.WriteLevel(p.Level)
		writeRequest.WriteNickname(p.Name)

		// TODO: change pkmn-rom-parser interface for writing abilities and held items via their names

		writeReqs = append(writeReqs, writeRequest)
	}

	// fetch the cached savefile from s3 bucket or sth; hardcoded for now
	savefile, err := os.ReadFile("../pkmn-rom-parser/savefiles/new.sav")
	if err != nil {
		w.Write([]byte(`{"message":"failed to open mock savefile"}`))
		return
	}
	
	res, err := ROMparser.Write(savefile, writeReqs)

	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		fmt.Printf("ERROR WHILE UPDATING SAVEFILE: %v\n", err)
		w.Write([]byte(`{"message":"error hile updatiing savefile"}`))
		return
	}

	w.Header().Add("Content-Type", "application/octet-stream")
	w.Header().Add("Content-Disposition", "attachment; filename=\"savefile\"")
	w.Header().Add("Content-Length", fmt.Sprint(len(res)))

	flusher, ok := w.(http.Flusher)
	if !ok {
		w.WriteHeader(http.StatusInternalServerError)
		w.Write([]byte(`{"message":"cannot open flusher"}`))
		return
	}

	fmt.Println("success?")

	w.Write(res)
	flusher.Flush()
}