FROM golang:latest

WORKDIR /app/version2

COPY go.mod ./
# COPY go.sum ./
# RUN go mod download

COPY *.go ./

RUN go build -o /Golang-app

EXPOSE 8090

CMD [ "/Golang-app" ]