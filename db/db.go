package db

import (
	"database/sql"
	"fmt"
	"log"
	"os"

	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

var Db *sql.DB = loginDB()

func loginDB() *sql.DB {
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
	ret, err := sql.Open("postgres", dataSource)
	if err != nil {
		log.Fatal("Error loggin into DB ", err)
	}

	return ret
}
