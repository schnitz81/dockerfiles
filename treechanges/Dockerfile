FROM python:3.9-alpine
RUN mkdir /treechanges
WORKDIR /treechanges
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/treechanges/main.py
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/treechanges/requirements.txt
RUN pip install -U pip
RUN pip install --no-cache-dir -r requirements.txt 
ENTRYPOINT ["python","-u","main.py"]

# build:
# docker build . -t treechanges

# run:
# docker run --name treechanges -d -v /tmp:/tmp treechanges /tmp


