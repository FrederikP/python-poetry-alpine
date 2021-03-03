ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}-alpine

ARG POETRY_VERSION=1.1.4

RUN apk add --no-cache \
        curl \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    source $HOME/.cargo/env \
    pip install --no-cache-dir poetry==${POETRY_VERSION} && \
    apk del \
        curl \
        gcc \
        libressl-dev \
        musl-dev \
        libffi-dev
