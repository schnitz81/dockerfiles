# myman
# Very playable version of Pacman in textmode.

FROM alpine:3.12
RUN apk --no-cache update && apk add --no-cache libcaca-dev ncurses-dev libcaca ncurses gnu-libiconv util-linux groff sed gcc make musl-dev coreutils mandoc mandoc-apropos less less-doc \ 
    && wget https://iweb.dl.sourceforge.net/project/myman/myman/myman-0.7.0/myman-0.7.0.tar.gz \
    && tar xvzf myman-0.7.0.tar.gz
WORKDIR /myman-0.7.0
RUN ./configure && make && make install
ENTRYPOINT ["/myman-0.7.0/myman"]

# Command examples: 
#
# Build docker image:
# $ docker build . -t myman
#
# Run container that is removed after exit:
# $ docker run --rm -it myman

