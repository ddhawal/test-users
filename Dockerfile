FROM golang:buster

RUN mkdir /app
COPY index.go /app

WORKDIR /app
RUN go get -d -v ./...
RUN go build index.go
#RUN go install -v ./...

CMD ["./index"]
#CMD ["app"]

