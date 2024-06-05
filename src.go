package main

import (
	"net/http"
	"ev-tracker/src/handlers"
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
)

func main() {
	http.HandleFunc("/", handlers.ReadSaveFileHandler)
	http.HandleFunc("/save", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(`{"message": "/SAVE ENDPOINT"}`))
	})
	lambda.Start(httpadapter.New(http.DefaultServeMux).ProxyWithContext)
	// http.ListenAndServe(":8080", nil)
}