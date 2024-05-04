package main

import (
	"bytes"
	"ev-tracker/src/handlers"
	"fmt"
	"io"
	"net/http"
)

func main() {
	fmt.Println("HELLO")

	http.HandleFunc("/get-pokemon", handlers.FetchPokemonHandler)
	http.HandleFunc("/update-pokemon", handlers.UpdatePokemonHandler)
	http.HandleFunc("/post-savefile", func(w http.ResponseWriter, r *http.Request) {
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
	})
	http.ListenAndServe(":8080", nil)
}