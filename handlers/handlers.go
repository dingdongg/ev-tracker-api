package handlers

import (
	"bytes"
	"ev-tracker/src/dao/factory"

	"encoding/json"
	"fmt"
	"io"

	"net/http"
	"strconv"

	ROMparser "github.com/dingdongg/pkmn-rom-parser/v4"
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