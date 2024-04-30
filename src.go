package main

import (
	"fmt"
	"net/http"
	"ev-tracker/src/handlers"
)

func main() {
	fmt.Println("HELLO")

	http.HandleFunc("/get-pokemon", handlers.FetchPokemonHandler)
	http.ListenAndServe(":8080", nil)
}
