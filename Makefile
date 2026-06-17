proto_chat_chat:
	@rm -rf /gen/pb/chat/chat/*
	protoc -I api/proto/chat/chat \
		--go_out=./gen/pb/chat/chat --go_opt=paths=source_relative \
                  --go-grpc_out=./gen/pb/chat/chat --go-grpc_opt=paths=source_relative \
                  chat.proto
proto_chat_message:
	@rm -rf /gen/pb/chat/message/*
	protoc -I api/proto/chat/message \
		--go_out=./gen/pb/chat/message --go_opt=paths=source_relative \
                          --go-grpc_out=./gen/pb/chat/message --go-grpc_opt=paths=source_relative \
                          message.proto
proto_chat: proto_chat_chat proto_chat_message
proto_auth:
	@rm -rf /gen/pb/auth/*
	protoc -I api/proto/auth \
      --go_out=./gen/pb/auth --go_opt=paths=source_relative \
      --go-grpc_out=./gen/pb/auth --go-grpc_opt=paths=source_relative \
      auth.proto
proto: proto_chat proto_auth