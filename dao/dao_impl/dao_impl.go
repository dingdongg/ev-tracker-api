package daoimpl

import (
	"context"
	"ev-tracker/src/dao/models"
	"fmt"
	"log"

	"github.com/jackc/pgx/v5/pgxpool"
)

type PostgresPokemonDao struct {
	dbConn *pgxpool.Pool
}

const (
	POSTGRES = iota
)

func Postgres() *PostgresPokemonDao {
	return &PostgresPokemonDao{
		loginDB(),
	}
}

func (ppd PostgresPokemonDao) GetOne(id uint) models.PokemonEntity {
	fmt.Println("executing query for: ", id)
	query := "SELECT * FROM pokemons WHERE id = $1"
	rows , err := ppd.dbConn.Query(context.Background(), query, id)

	if err != nil {
		log.Fatal("PostgresPokemonDao::GetOne() - ", err)
	}

	if err := rows.Conn().Close(context.Background()); err != nil {
		log.Fatal("PostgresPokemonDao::GetOne() - error closing connection ", err)
	}

	var pkmn models.PokemonEntity

	for rows.Next() {
		rows.Scan(
			&pkmn.Id, &pkmn.Name, &pkmn.BaseHp, &pkmn.BaseAtk, 
			&pkmn.BaseDef, &pkmn.BaseSpA, &pkmn.BaseSpD, &pkmn.BaseSpe, 
			&pkmn.EvYield, &pkmn.Abilities, &pkmn.Types,
		)
		fmt.Printf("%v\n", pkmn)
	}

	if err := rows.Err(); err != nil {
		log.Fatal("PostgresPokemonDao::GetOne() - something went wrong!! ", err)
	}

	return pkmn
}

func (ppd PostgresPokemonDao) GetMany(ids []uint) []models.PokemonEntity {
	res := make([]models.PokemonEntity, 0)

	for _, id := range ids {
		res = append(res, ppd.GetOne(id))
	}

	return res
}