FROM golang:latest

LABEL maintainer="handgull <gullandrea693@gmail.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

EXPOSE 8080

RUN go run *.go
