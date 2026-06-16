proto_chat:
	@rm -rf /gen/pb/chat/*
	protoc -I api/proto/chat \
      --go_out=./gen/pb/chat --go_opt=paths=source_relative \
      --go-grpc_out=./gen/pb/chat --go-grpc_opt=paths=source_relative \
      chat.proto

proto_auth:
	@rm -rf /gen/pb/auth/*
	protoc -I api/proto/auth \
      --go_out=./gen/pb/auth --go_opt=paths=source_relative \
      --go-grpc_out=./gen/pb/auth --go-grpc_opt=paths=source_relative \
      auth.proto
proto: proto_chat proto_auth