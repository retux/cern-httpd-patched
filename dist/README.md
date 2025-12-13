# CERN's httpd web server patched for Linux

The dist directory contains the binary files for running original httpd web server from CERN, built for GNU/Linux x86-64.
You can run the binaries directly (following config file guidance) or you can run it from this container.

# Pull container from docker.io hub

```
$ podman pull docker.io/retux/cern-httpd:1992
```

# Run CERN httpd container

```
$ podman run -p 8080:8080 --name httpd docker.io/retux/cern-httpd:1992
```

You can find the CERN original site by typing http://localhost:8080/ on your browser.
On the httpd server logs you may see some errors, that is likely due to the fact modern browsers handle the tcp socket in a different way from the early browsers from the nineties. Both web servers and browsers have changed... a lot.



# Build container

Alternatively you can build the container locally:

```
$ podman build . -t httpd-cern:1992
```

# Run locally build container container

```
$ podman run -p 8080:8080 --name httpd cern-httpd:1992
```


The original CERN web site is included just for historical documentation and to show the server running with its original web pages, copyright from CERN.


The origingal CERN file can be found at: https://info.cern.ch. The html files have been included on thise container for historical purposes. Copyright if from CERN and Tim Berners-Lee.

