# ipecho
#
# basic webserver that listens on port 80 and returns the apparent origin IP 

FROM golang:alpine3.17 as builder

LABEL name="ipecho builder"
LABEL maintainer="schnitz81"
LABEL description="Docker image for building ipecho from repo"
LABEL url="https://github.com/schnitz81/dockerfiles/ipecho"
LABEL project="https://github.com/lgrn/ipecho"

RUN apk --no-cache update \
	&& apk --no-cache add git \
	&& git clone https://github.com/lgrn/ipecho.git /ipecho 

WORKDIR /ipecho

RUN go build


FROM alpine

# install netcat for healthcheck
RUN apk add --no-cache netcat-openbsd

LABEL name="ipecho"
LABEL maintainer="schnitz81"
LABEL description="Docker image for containerized ipecho"
LABEL url="https://github.com/schnitz81/dockerfiles/ipecho"
LABEL project="https://github.com/lgrn/ipecho"

# copy artifact created previously by the builder container
COPY --from=builder ipecho/ipecho /

HEALTHCHECK --interval=1m --timeout=10s \
    CMD nc -z localhost 80

EXPOSE 80

ENTRYPOINT ["/ipecho"]

# build cmd:
# $ docker build -t ipecho .
#
# run cmd:
# $ docker run --rm -d --name ipecho -p 80:80 ipecho 

