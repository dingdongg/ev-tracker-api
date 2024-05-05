#!/bin/sh
go mod edit -dropreplace github.com/dingdongg/pkmn-platinum-rom-parser
go mod tidy
go clean -modcache
go get github.com/dingdongg/pkmn-platinum-rom-parser@latest