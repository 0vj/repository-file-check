FROM golang:alpine

WORKDIR /app
ADD . /app/
RUN go build -o /usr/bin/repository-file-check main.go
RUN chmod +x /usr/bin/repository-file-check

CMD ["/usr/bin/repository-file-check"]

FROM golang:alpine
