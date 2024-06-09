package models

type PokemonEntity struct {
	Id uint
	Name string
	BaseHp uint
	BaseAtk uint
	BaseDef uint
	BaseSpA uint
	BaseSpD uint
	BaseSpe uint
	EvYield uint
	Abilities [2]string
	Types [2]string
}