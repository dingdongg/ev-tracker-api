package handlers

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"ev-tracker/src/db"
	_ "github.com/lib/pq"
)

type Pokemon struct {
	Id		string
	Name	string
	Hp 		uint
	Atk		uint	
	Def 	uint
	Spa		uint
	Spd		uint
	Spe		uint
}

func addHeaders(w http.ResponseWriter) {
	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")
	w.Header().Add("Content-Type", "application/json")
}

func FetchPokemonHandler(w http.ResponseWriter, r *http.Request) {
	// GET request that fetches the current EV progress of a pokemon
	// pokemon name is specified via query string param
	if r.Method != "GET" {
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		return
	}

	addHeaders(w)

	w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")
	w.Header().Add("Content-Type", "application/json")

	dao, err := db.LoginDB()
	if err != nil {
		w.Write([]byte(`{"message":"Error logging into DB"}`))
		log.Fatal("CANT LOGIN", err)
	}

	res, err := dao.Query("SELECT * FROM pokemons")
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
		if err := res.Scan(&p.Id, &p.Name, &p.Hp, &p.Atk, &p.Def, &p.Spa, &p.Spd, &p.Spe); err != nil {
			json.NewEncoder(w).Encode(pokemons)
			log.Fatal(err)
			return
		}
		pokemons = append(pokemons, p)
	}
	if err = res.Err(); err != nil {
		json.NewEncoder(w).Encode(pokemons)
		log.Fatal(err)
		return
	}

	json.NewEncoder(w).Encode(pokemons)
}
