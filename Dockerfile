FROM golang:latest

# WORKDIR /app/version2
WORKDIR /app

COPY go.mod ./
# COPY go.sum ./
# RUN go mod download

COPY *.go ./

# RUN go build -o /Golang-app
RUN go build -o /

EXPOSE 8090

CMD [ "/Golang-app" ]