#!/bin/sh
go mod edit -dropreplace github.com/dingdongg/pkmn-rom-parser/v4
go mod tidy
go clean -modcache
go get github.com/dingdongg/pkmn-rom-parser/v4