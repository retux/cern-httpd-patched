FROM debian:12

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Copy your server
COPY ./usr/local/bin/* /usr/local/bin
RUN chmod +x /usr/local/bin/httpd_3.0A && mkdir -p /var/www/html && mkdir -p /etc/httpd
# non-root user for cern httpd
RUN useradd -r -s /usr/sbin/nologin cernuser
USER cernuser

EXPOSE 8080

# Server MUST stay in foreground
CMD ["/usr/local/bin/httpd", "-vv", "-r", "/etc/httpd/httpd-cern.conf"]

