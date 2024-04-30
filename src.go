package main

import (
	"fmt"
	"net/http"
	"ev-tracker/src/handlers"
)

func main() {
	fmt.Println("HELLO")

	http.HandleFunc("/get-pokemon", handlers.FetchPokemonHandler)
	http.HandleFunc("/update-pokemon", handlers.UpdatePokemonHandler)
	http.ListenAndServe(":8080", nil)
}