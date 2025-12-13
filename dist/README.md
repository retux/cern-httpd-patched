# CERN's httpd web server patched for Linux

The dist directory contains the binary files for running original httpd web server from CERN, built for GNU/Linux x86-64.
You can run the binaries directly (following config file guidance) or you can run it from this container.

# Run container
```
podman run -p 8080:8080 --name httpd cern-httpd:1992
```

# Build container

```
$ podman build . -t httpd-cern:1992
```

The original CERN web site is included just for historical documentation and to show the server running with its original web pages, copyright from CERN.


