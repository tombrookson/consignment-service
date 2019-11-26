build:
	protoc -I. --go_out=plugins=micro:. \
	  proto/consignment/consignment.proto
	GOOS=linux GOARCH=amd64 go build -o bin/consignment-service
	docker build -t consignment-service .