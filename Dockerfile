FROM python:3.8-alpine

RUN apk add --no-cache \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev && \
    pip install --no-cache-dir 'poetry==1.0.2' && \
    apk del \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev
