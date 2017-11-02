FROM ubuntu:17.10

RUN apt-get update && \
    apt-get install -y sbcl git make gcc && \
    apt-get clean && \
    cd /root/ && \
    git clone git://git.code.sf.net/p/sbcl/sbcl && \
    cd sbcl && \
    git checkout tags/sbcl-1.4.0 && \
    sh make.sh && \
    sh install.sh && \
    apt-get purge -y git sbcl make gcc && \
    rm -r /root/sbcl && \
    rm -rf /var/lib/apt/lists/*

