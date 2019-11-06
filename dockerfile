FROM golang:1.13-alpine as build

LABEL maintainer="flyznex <thuanpt.dev@gmail.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o main ./cmd/mhknowledge

FROM alpine:latest

WORKDIR /app

# Run update ca for alpine fix: x509: certificate signed by unknown authority @aws-sdk
# RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

COPY --from=build /app/main .

EXPOSE 80

CMD ["./main"]