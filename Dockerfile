FROM python:3.10-rc-alpine

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /logbook
WORKDIR /logbook
COPY ./logbook /logbook

RUN adduser -D user
USER user
