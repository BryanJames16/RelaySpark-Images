FROM golang:1.24-alpine

# Supports go init, build, test, and coverage workflows.
RUN apk add --no-cache bash git make

WORKDIR /workspace

CMD ["/bin/sh"]
