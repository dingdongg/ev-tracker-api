#!/bin/sh

go mod edit -replace github.com/dingdongg/pkmn-platinum-rom-parser=../pkmn-platinum-rom-parser
go mod tidy
go clean -modcache