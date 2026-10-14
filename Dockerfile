FROM python:3.11-slim

WORKDIR /app


ENV  APP_ENV = development

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD pytest

