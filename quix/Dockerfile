# quix
# Terminal version of the classic Qix game.

FROM alpine:3.12.1
RUN apk --no-cache update && apk add --no-cache gcc make git musl-dev
RUN git clone https://github.com/SirWumpus/quix.git
WORKDIR /quix
RUN make 
ENTRYPOINT ["/quix/quix"]

# Command examples: 
#
# Build docker image:
# $ docker build . -t quix
#
# Run container that is removed after exit:
# $ docker run --rm -it quix
