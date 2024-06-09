//go:build dev

package daoimpl

import (
	"context"
	"log"
	"os"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
)

const DB_CREDENTIAL string = "DB_CONN_STRING_LOCAL"

func loginDB() *pgxpool.Pool {
	if err := godotenv.Load(); err != nil {
		log.Fatal(err)
	}

	connString := os.Getenv(DB_CREDENTIAL)

	conn, err := pgxpool.New(context.Background(), connString)
	if err != nil {
		log.Fatal(err)
	}

	return conn
}