FROM golang:1.17

WORKDIR /app

COPY go.mod go.sum ./
COPY hello.go ./

RUN go mod download

RUN go build -o hello

EXPOSE 3000

CMD ["./hello"]
