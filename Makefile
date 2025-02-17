bin/ojosama: go.* *.go cmd/*
	make test
	go vet .
	go fmt .
	mkdir -p bin
	go build -o bin/ojosama ./cmd/ojosama

.PHONY: test
test:
	go test -cover ./...

.PHONY: install
install: go.* *.go cmd/*
	go install ./cmd/ojosama
