package handlers

import (
	"database/sql"
	"encoding/json"
	"log"
	"net/http"

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

	db, err := sql.Open("postgres", "user=admin dbname=evtracker sslmode=disable")
	if err != nil {
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		log.Fatal("cANTLOGIN", err)
	}

	values := r.URL.Query()
	pokemon := values.Get("pokemon")
	results, err := db.Query("SELECT * from pokemons WHERE name = $1", pokemon)
	if err != nil {
		w.Write([]byte(`{"message":"ERROR: invalid request"}`))
		log.Fatal("FAILED QUERY", err)
	}

	json.NewEncoder(w).Encode(results)
}
