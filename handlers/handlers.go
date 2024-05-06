package handlers

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net/http"
	"strconv"
	"ev-tracker/src/db"

	_ "github.com/lib/pq"
	ROMparser "github.com/dingdongg/pkmn-platinum-rom-parser"
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
	BaseStats	 StatResponse	`json:"baseStats"`
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

func UpdatePokemonHandler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		w.Write([]byte(`{"message":"ERROR: invalid request:"}`))
		return
	}

	addHeaders(w)

	dao := db.Db
	var body PokemonUpdateRequest

	jsonDecoder := json.NewDecoder(r.Body)
	err := jsonDecoder.Decode(&body)
	if err != nil {
		log.Fatal("CANT READ REQ BODY", err)
	}

	// update pokemon in DB
	_, err = dao.Exec(
		`UPDATE pokemons SET 
			hp = $1, 
			attack = $2, 
			defense = $3, 
			sp_attack = $4, 
			sp_defense = $5, 
			speed = $6 
		WHERE name = $7`,
		body.NewHp,
		body.NewAtk,
		body.NewDef,
		body.NewSpa,
		body.NewSpd,
		body.NewSpe,
		body.Name,
	)
	if err != nil {
		log.Fatal("FAILED TO UPDATE DB ", err)
	}

	w.Write([]byte(`{"message":"Success"}`))
}

// return all party pokemon info in JSON format 
func ReadSaveFileHandler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}

	addHeaders(w)

	r.ParseMultipartForm(1 << 19)
	var buf bytes.Buffer

	file, header, err := r.FormFile("savefile")
	if err != nil {
		fmt.Println("BRUH ", err)
		return
	}
	defer file.Close()
	
	fmt.Printf("filename: %s\n", header.Filename)
	io.Copy(&buf, file)

	results := ROMparser.Parse(buf.Bytes())
	var res []PokemonResponse

	for _, p := range results {
		res = append(res, PokemonResponse{
			strconv.Itoa(int(p.PokedexId)),
			fmt.Sprintf("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/%d.png", p.PokedexId),
			p.Level,
			p.Name,
			"mockAbility",
			"mockitem",
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
				p.Stats.Hp,
				p.Stats.Attack,
				p.Stats.Defense,
				p.Stats.SpAttack,
				p.Stats.SpDefense,
				p.Stats.Speed,
			},
		})
	}

	json.NewEncoder(w).Encode(res)
}