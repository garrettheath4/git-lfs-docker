FROM alpine:latest
RUN apk update && apk add git-lfs && git lfs install
