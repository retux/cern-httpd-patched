FROM debian:12

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Copy your server
COPY myserver /usr/local/bin/myserver
RUN chmod +x /usr/local/bin/myserver

# Optional: non-root user
RUN useradd -r -s /usr/sbin/nologin webuser
USER webuser

EXPOSE 8080

# Server MUST stay in foreground
CMD ["/usr/local/bin/myserver", "-vv", "-r", "/path/to/config/file.conf"]

