FROM ghcr.io/wundergraph/cosmo/router:latest
COPY config.yaml /app/config.yaml
COPY router-config.json /app/router-config.json
