build:
	protoc -I. --go_out=plugins=grpc:. \
	  proto/consignment/consignment.proto

build-app:
	go build -o bin/consignment-service