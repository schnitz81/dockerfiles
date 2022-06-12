FROM python:3.9-alpine
RUN mkdir /ttycolorwave
WORKDIR /ttycolorwave
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/ttycolorwave/ttycolorwave.py \
    && wget https://raw.githubusercontent.com/schnitz81/python-apps/main/ttycolorwave/requirements.txt
RUN pip install -U pip \
    && pip install --no-cache-dir -r requirements.txt 
ENTRYPOINT ["python","-u","ttycolorwave.py"]

# build:
# docker build . -t ttycolorwave

# run:
# docker run --rm --name ttycolorwave ttycolorwave 
