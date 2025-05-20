# The machine controls both white and black side and plays a single full game of chess.
#
# The default total thinking time for each CPU player is 100 seconds. Enter an optional
# number of seconds as input parameter for a longer or shorter thinking time which
# results in a longer or shorter game.
#
# Mount the container's /var/log to log the result of the game.

FROM debian:trixie-slim
RUN apt-get update \
    && apt-get install -y expect gnuchess
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
