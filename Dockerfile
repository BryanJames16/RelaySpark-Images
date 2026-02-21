FROM alpine:3.23 AS base

# User Setup
RUN addgroup -S docker && adduser -S musketeer -G docker
USER musketeer

# Install Three Musketeers Base Tools: 
# - Docker
# - Compose
# - Make
RUN apk update && \
    apk add --no-cache docker=29.1.3-r2 && \ 
    apk add --no-cache docker-cli=29.1.3-r2 && \ 
    apk add --no-cache docker-cli-compose=2.40.3-r3 && \ 
    apk add --no-cache make=4.4.1-r3

# Verify Core Tools
RUN docker --version && \
    docker compose version && \ 
    make --version

CMD ["/bin/sh"]