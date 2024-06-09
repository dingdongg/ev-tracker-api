package main

import (
	"ev-tracker/src/handlers"
	"ev-tracker/src/mode"
	"net/http"

	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
)

func main() {
	http.HandleFunc("/", handlers.ReadSaveFileHandler)
	http.HandleFunc("/save", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(`{"message": "/SAVE ENDPOINT"}`))
	})

	if mode.DEV_MODE {
		http.ListenAndServe(":8080", nil)
	} else {
		lambda.Start(httpadapter.New(http.DefaultServeMux).ProxyWithContext)
	}
}