#!/bin/sh

go mod edit -replace github.com/dingdongg/pkmn-rom-parser/v5=../pkmn-rom-parser
go clean -modcache
go mod tidy