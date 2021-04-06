#
# Build the go artefacts
FROM golang:1.16 AS build

WORKDIR /go/src
ADD . .

RUN go build -ldflags "-X main.BuildTime=$(date '+%Y-%m-%d_%H-%M-%S')" -o myapp .

FROM scratch AS runtime
COPY --from=build /go/src/myapp ./
ENTRYPOINT ["./myapp"]