#!/bin/sh

go mod edit -replace github.com/dingdongg/pkmn-rom-parser/v4=../pkmn-rom-parser
go mod tidy
go clean -modcache