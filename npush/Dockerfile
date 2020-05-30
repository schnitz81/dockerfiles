# npush
# Sokoban-like game with additional features like dynamite.

FROM debian:buster-slim
RUN apt-get update && apt-get install wget make g++ libncurses-dev libncurses6 -y
RUN wget https://sourceforge.net/projects/npush/files/npush/0.7/npush-0.7.tgz
RUN tar xvf npush-0.7.tgz
WORKDIR npush-0.7/
RUN make
ENTRYPOINT ["/npush-0.7/npush"]

# Command examples: 
#
# Build docker image:
# $ docker build . -t npush
#
# Run container that is removed after exit:
# $ docker run --rm -it npush
