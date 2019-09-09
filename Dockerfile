# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Proxy
ENV http_proxy "http://proxy-XXXX.co.jp:0000"
ENV https_proxy "http://proxy-XXXX.co.jp:0000"

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /code/
