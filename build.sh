GOOS=linux GOARCH=amd64 go build -o bootstrap .
echo "compiled x86-64 binary"
zip bootstrap.zip bootstrap
echo "Build complete."