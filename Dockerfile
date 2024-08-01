FROM golang:1.17

WORKDIR /app

COPY go.mod ./
COPY main.go ./

RUN go build -o /server

EXPOSE 8080

CMD [ "/server"]