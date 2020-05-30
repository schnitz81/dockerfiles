FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

ADD startup.sh /startup.sh

RUN apt-get update -y && \
    apt-get install -y git x11vnc wget python python-numpy unzip xvfb midori openbox geany menu && \
    cd /root && git clone https://github.com/kanaka/noVNC.git && \
    cd noVNC/utils && git clone https://github.com/kanaka/websockify websockify && \
    cd /root && \
    chmod 0755 /startup.sh && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD /startup.sh
EXPOSE 6080

# Change vnc login password in startup.sh

# build cmd:
# docker build . -t novnc

# run cmd:
# docker run --name novnc -td -p 6080:6080 -v /host/folder:/client/folder -v /run/novnc-tmp:/tmp novnc

