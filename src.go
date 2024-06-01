package main

import (
	"ev-tracker/src/handlers"
	"net/http"

	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
)

func main() {
	http.HandleFunc("/", handlers.ReadSaveFileHandler)
	lambda.Start(httpadapter.New(http.DefaultServeMux).ProxyWithContext)
	// http.ListenAndServe(":8080", nil)
}