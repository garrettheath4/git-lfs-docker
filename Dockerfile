FROM alpine:latest
RUN apk update && apk add git-lfs && git lfs install
ENTRYPOINT ["git-lfs"]
CMD ["--version"]
