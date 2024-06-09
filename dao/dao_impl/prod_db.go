//go:build !dev

package daoimpl

import (
	"context"
	"log"
	"os"

	"github.com/jackc/pgx/v5/pgxpool"
)

const DB_CREDENTIAL string = "DB_CONN_STRING"

func loginDB() *pgxpool.Pool {
	connString := os.Getenv(DB_CREDENTIAL)

	conn, err := pgxpool.New(context.Background(), connString)
	if err != nil {
		log.Fatal(err)
	}

	return conn
}