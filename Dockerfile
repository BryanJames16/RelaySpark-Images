FROM alpine:3.23 AS base

LABEL maintainer="Bryan James"
LABEL description="Base three musketeer container image."

# Install Three Musketeers Base Tools:
# - Docker
# - Compose
# - Make
RUN apk update && \
    apk add --no-cache docker docker-cli docker-cli-compose make

# Verify Core Tools
RUN docker --version && \
    docker compose version && \
    make --version

# User Setup
RUN getent group docker >/dev/null 2>&1 || addgroup -S docker && \
    adduser -S musketeer -G docker

CMD ["/bin/sh"]
