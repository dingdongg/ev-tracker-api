package factory

import (
	daoimpl "ev-tracker/src/dao/dao_impl"
	"ev-tracker/src/dao/models"
)

type PokemonDao interface {
	GetOne(id uint) models.PokemonEntity
	GetMany(ids []uint) []models.PokemonEntity
}

func New() PokemonDao {
	return daoimpl.Postgres() // dependency injection
}