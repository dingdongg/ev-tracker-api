package dao

import (
	"context"
	"log"
	"os"
	"github.com/jackc/pgx/v5/pgxpool"
)

var Db = loginDB()

func loginDB() *pgxpool.Pool {
	// get DB credentials from env file
	// if err := godotenv.Load(); err != nil {
	// 	log.Fatal("Error loading DB credentials: ", err)
	// }

	connString := os.Getenv("DB_CONN_STRING")
	conn, err := pgxpool.New(context.Background(), connString)

	if err != nil {
		log.Fatal(err)
	}

	return conn
}

func GetPokemonBaseStats(conn *pgxpool.Pool, pokemonIds []uint) {
	
}