ARG PYTHON_VERSION=3.8
ARG POETRY_VERSION=1.0.2

FROM python:$PYTHON_VERSION-alpine

RUN apk add --no-cache \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev && \
    pip install --no-cache-dir poetry==$POETRY_VERSION && \
    apk del \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev
