# corebench
# Bench CPU speed through three tests and generate a total score relative to your computer's single core speed.

FROM alpine
RUN apk --no-cache update \
    && apk --no-cache add gcc libc-dev gmp-dev \
    && wget https://raw.githubusercontent.com/schnitz81/corebench/master/corebench.c \
    && gcc -v -o /corebench corebench.c -lgmp
CMD ["/corebench"]

# buildcmd:
# docker build -t corebench .

# runcmd:
# docker run -it --rm corebench
