FROM golang:latest

RUN apt-get -y update && apt-get -y upgrade
RUN go install github.com/waffle-lua/waffle/cmd/waffle@v0.0.2

COPY . /app
WORKDIR /app

ENTRYPOINT ["waffle", "-src", "/app/test.lua"]
EXPOSE 8080
