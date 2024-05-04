package handlers

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"

	"ev-tracker/src/db"
	_ "github.com/lib/pq"
)

type Pokemon struct {
	Id		string	`json:"id"`
	Name	string	`json:"name"`
	Hp 		uint	`json:"hp"`
	Atk		uint	`json:"atk"`
	Def 	uint	`json:"def"`
	Spa		uint	`json:"spa"`
	Spd		uint	`json:"spd"`
	Spe		uint	`json:"spe"`
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

func FetchPokemonHandler(w http.ResponseWriter, r *http.Request) {
	// GET request that fetches the current EV progress of a pokemon
	// pokemon name is specified via query string param
	if r.Method != "GET" {
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}

	addHeaders(w)

	dao := db.Db
	pokemonName := r.URL.Query().Get("pokemon")

	res, err := dao.Query("SELECT * FROM pokemons where name = $1", pokemonName)
	if err != nil {
		// read in init.sql to memory and run it
		file, err := os.ReadFile("init.sql")
		if err != nil {
			fmt.Println(">>>>>?????")
			log.Fatal(err)
		}

		fileString := string(file[:])
		_, err = dao.Exec(fileString)
		if err != nil {
			log.Fatal(err)
		}
	}
	defer res.Close()
	
	var pokemons []Pokemon
	for res.Next() {
		var p Pokemon
		err = res.Scan(&p.Id, &p.Name, &p.Hp, &p.Atk, &p.Def, &p.Spa, &p.Spd, &p.Spe)
		if err != nil {
			break
		}
		pokemons = append(pokemons, p)
	}

	json.NewEncoder(w).Encode(pokemons)
}

func ReadSaveFileHandler(w http.ResponseWriter, r *http.Request) {
	if r.Method != "GET" {
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

	fmt.Printf("% x\n", buf)
	w.Write([]byte(`{"message": "Success reading savefile"}`))
}