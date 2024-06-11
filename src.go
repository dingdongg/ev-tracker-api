package main

import (
	"ev-tracker/src/handlers"
	"ev-tracker/src/mode"
	"fmt"
	"net/http"

	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
)

func main() {
	http.HandleFunc("/", handlers.ReadSaveFileHandler)
	http.HandleFunc("/save", handlers.UpdateSaveFileHandler)

	if mode.DEV_MODE {
		fmt.Println("Listening on port 8080")
		http.ListenAndServe(":8080", nil)
	} else {
		lambda.Start(httpadapter.New(http.DefaultServeMux).ProxyWithContext)
	}
}