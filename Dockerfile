FROM python:3.12.0-slim-bookworm@sha256:19a6235339a74eca01227b03629f63b6f5020abc21142436eced6ec3a9839a76

ENV version=3.5.0

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential git ruby ruby-dev && \
    pip install --no-cache-dir pre-commit==$version && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD []
WORKDIR /work

LABEL name=pre-commit version=$version \
      maintainer="Dafydd Jones <dafydd@techneg.it>"
