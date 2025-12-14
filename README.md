# CERN's httpd web server patched

This is a fork of the original CERN's httpd server code base (as it is found at W3C site: https://www.w3.org/Daemon/).
This repo holds a simple set of patches that allow anyone to build httpd on a modern linux box, whether is 32 or 64 bits.

IMPORTANT: this repo was created only for historical purposes and curiosity. It is not intended to be used for
any productive use.
Enjoy a taste of Web's history by building and running CERN's httpd server.

# How to run it straight away

If you simply want to experiment and run CERN's httpd server right away you can do it by using this container:

```
$ podman run -p 8080:8080 --name httpd docker.io/retux/cern-httpd:1992
```

You can find the CERN original site by typing http://localhost:8080/ on your browser.
On the httpd server logs you may see some errors, that is likely due to the fact modern browsers handle the tcp socket in a different way from the early browsers from the nineties. Both web servers and browsers have changed... a lot.

If you want to build it, you can run the instructions below.

# A short demo can be found in the link below:

[![Back to the Web Early Begginings](https://img.youtube.com/vi/prC3Cry_fYs/0.jpg)](https://www.youtube.com/watch?v=prC3Cry_fYs "Back to the Web early beginnings: Building CERN httpd, the first Web Server")

# Prerequisites

To build CERN's http on a current Linux distro you will need at least the build tools and csh (C shell). On a Debian based distribution that toolset can be installed as follows:

```
$ sudo apt-get install build-essential csh
```

# How to patch

Follow the steps below to run make command and build httpd web server (see prerequisites above):

```
$ cd WWW
$ gzip -dc w3c-httpd-3.0A.tar.gz | tar xvf -
$ patch -p2 < ../x64retux.patch
```
You should get:

```
patching file All/linux/Makefile.include
patching file Daemon/Implementation/HTSUtils.c
patching file Library/Implementation/HTFTP.c
patching file Library/Implementation/HTString.h
patching file Library/Implementation/HTTCP.c
```

And then you can try building the code:

```
$ make
```

If everything runs fine you should get:

```
Have fun! If you have any problems with this software feel free to
contact <httpd@w3.org>. Online documentation is available via
the <URL:http://www.w3.org/pub/WWW/Daemon/>

BUILD complete!
```

Like in 1991, have fun with this historic piece of code.
