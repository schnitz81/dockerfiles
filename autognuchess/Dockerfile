FROM debian:buster-slim
RUN apt-get update
RUN apt-get install -y expect gnuchess
ADD autognuchess.* /
RUN chmod +x /autognuchess.*
ENTRYPOINT ["/autognuchess.sh"]
