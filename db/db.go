package db

import (
	"database/sql"
	"fmt"
	"log"
	"os"

	"github.com/joho/godotenv"
)

func LoginDB() (*sql.DB, error) {
	// get DB credentials from env file
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading DB credentials")
	}

	dbUser := os.Getenv("DB_USER")
	// dbPassword := os.Getenv("DB_PASSWORD")
	dbName := os.Getenv("DB_NAME")

	dataSource := fmt.Sprintf("user=%s dbname=%s sslmode=disable", dbUser, dbName)

	fmt.Println(sql.Drivers())

	// maybe implement DAO pattern? (look into this mroe)
	return sql.Open("postgres", dataSource)
}