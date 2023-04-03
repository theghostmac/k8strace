FROM golang:1.19-alpine AS build
ADD . /src
WORKDIR /src
RUN go get -d -v -t
RUN GOOS=linux GOARCH=amd64 go build -v -o k8strace

FROM alpine:3.17.2
EXPOSE 8080
CMD ["k8strace"]
ENV VERSION 1.1.4
COPY --from=build /src/k8strace /usr/local/bin/k8strace
RUN chmod +x /usr/local/bin/k8strace