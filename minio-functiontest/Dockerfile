# minio-tester
# 
# Automatically test accessibility and function of a minio database.

FROM python:3-alpine
RUN apk --no-cache update && apk --no-cache add bash
RUN mkdir /minio-functiontest
WORKDIR /minio-functiontest
RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && chmod +x mc 
RUN wget https://raw.githubusercontent.com/schnitz81/python-apps/main/minio-functiontest/minio-functiontest.py
ENTRYPOINT ["python","-u","minio-functiontest.py"]

# build:
# docker build . -t minio-functiontest

# run:
# docker run --rm minio-functiontest 11.22.33.44 minioadmin miniopassword

# run with non-standard port:
# docker run --rm minio-functiontest 11.22.33.44 minioadmin miniopassword -p 9005
