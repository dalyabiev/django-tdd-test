FROM python:latest
LABEL Maintainer="Denis Alyabiev Ltd" 

ENV PYTHONUNBUFFERED =1 

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser --disabled-login --disabled-password user
USER user