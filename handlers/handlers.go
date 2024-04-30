package handlers

import (
	// "encoding/json"
	"fmt"
	"log"
	"net/http"
	// "os"

	"ev-tracker/src/db"

	_ "github.com/lib/pq"
)

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
		w.Write([]byte(`{"message":"Error fetching from table"}`))
		// read in init.sql to memory and run it
		log.Fatal("CANT FETCH", err)
	}

	fmt.Println(res)
	w.Write([]byte(`{"message":"Success"}`))
}
