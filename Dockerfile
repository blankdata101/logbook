FROM python:3.10-rc-alpine

ENV PYTHONUNBUFFERED 1

#RUN pip install --upgrade pip
RUN /usr/local/bin/python -m pip install --upgrade pip

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
