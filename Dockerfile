FROM golang:alpine

WORKDIR /app
ADD . /app
RUN go mod download
RUN go build -o repository-file-check main.go
RUN chmod +x /usr/bin/repository-file-check

CMD ["/app/repository-file-check"]

FROM golang:alpine
