FROM python:3.7-alpine
MAINTAINER adongnmh

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN apk add --no-cache git

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


