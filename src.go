package main

import (
	"ev-tracker/src/handlers"
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("HELLO")

	http.HandleFunc("/get-pokemon", handlers.FetchPokemonHandler)
	// http.HandleFunc("/update-pokemon", handlers.UpdatePokemonHandler)
	http.HandleFunc("/post-savefile", handlers.ReadSaveFileHandler)
	http.ListenAndServe(":8080", nil)
}