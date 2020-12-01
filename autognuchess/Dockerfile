FROM debian:buster-slim
RUN apt-get update
RUN apt-get install -y expect gnuchess
ADD autognuchess.* /
RUN chmod +x /autognuchess.*
ENTRYPOINT ["/autognuchess.sh"]

# Build cmd
# $ docker build -t autognuchess .
#
# Simple run:
# $ docker run -it --rm autognuchess
#
# Run with a 10 seconds thinking time and save the result log on the host:
# $ docker run -it --rm --mount type=bind,source=/var/log,target=/var/log autognuchess 10
