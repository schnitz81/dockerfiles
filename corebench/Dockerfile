# corebench
# Bench CPU speed through three tests and generate a total score relative to your computer's single core speed.

FROM alpine
RUN apk update && apk add gcc libc-dev gmp-dev
RUN wget https://raw.githubusercontent.com/schnitz81/corebench/master/corebench.c
RUN gcc -v -o /corebench corebench.c -lgmp
CMD ["/corebench"]

# buildcmd:
# docker build -t corebench .

# runcmd:
# docker run -it --rm schnitz81/corebench
