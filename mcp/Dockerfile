FROM ghcr.io/wundergraph/cosmo/router:latest

# Install nginx
USER root
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Copy configs and operations as before
COPY config.yaml /app/config.yaml
COPY config.json /app/config.json
COPY operations /app/operations

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose nginx port
EXPOSE 8080

# Start both Cosmo Router and nginx
CMD /bin/sh -c "/app/router & nginx -g 'daemon off;'"
