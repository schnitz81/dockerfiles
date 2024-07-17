FROM python:3.12-alpine
RUN mkdir /nwlogger
WORKDIR /nwlogger
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/nwlogger/nwlogger.py
ENTRYPOINT ["python","-u","nwlogger.py"]

# build:
# docker build . -t nwlogger

# run:
# docker run --name nwlogger nwlogger --ip 192.168.1.101 --ip 192.168.1.102 --port 123 --port 234

# run with mounted log file:
# docker run -d --name nwlogger -v /var/log:/var/log nwlogger --ip 192.168.1.101 --ip 192.168.1.102 --port 123 --port 234

