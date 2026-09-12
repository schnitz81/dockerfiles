FROM debian:trixie-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN (apt-get update ; apt-get install -y curl python3 ffmpeg) || true
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp \
    && mkdir /hostfolder
WORKDIR /hostfolder
ENTRYPOINT ["yt-dlp"]

# build:
# $ docker build --no-cache -t yt-dlp .
