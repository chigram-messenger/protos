proto:
	@rm -rf /gen/pb/chat/*
	protoc -I api/proto/chat \
      --go_out=./gen/pb/chat --go_opt=paths=source_relative \
      --go-grpc_out=./gen/pb/chat --go-grpc_opt=paths=source_relative \
      chat.proto