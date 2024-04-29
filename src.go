package main

import (
	"fmt"
	"net/http"
	"encoding/json"
	"ev-tracker/src/handlers"
)

type Data struct {
	Name string `json:"name"`
	Hp int16	`json:"hp"`
	Atk int16	`json:"atk"`
	Def int16	`json:"def"`
	Spa int16	`json:"spa"`
	Spd	int16	`json:"spd"`
	Spe int16	`json:"spe"`
}

func main() {
	fmt.Println("HELLO")

	http.HandleFunc("/bar", func(w http.ResponseWriter, r *http.Request) {
		if r.Method != "POST" {
			w.Write([]byte(`{"message":"invalid request"}`))
			return
		}



		w.Header().Add("Access-Control-Allow-Origin", "http://localhost:5173")
		w.Header().Add("Content-Type", "application/json")

		custom_data := Data{"sneasel", 0, 1, 2, 5, 255, 3}
		json.NewEncoder(w).Encode(custom_data)
	})

	http.HandleFunc("/get-pokemon", handlers.FetchPokemonHandler)

	http.ListenAndServe(":8080", nil)
}
