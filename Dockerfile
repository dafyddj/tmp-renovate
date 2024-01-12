FROM python:3.11.7-slim-bookworm@sha256:637774748f62b832dc11e7b286e48cd716727ed04b45a0322776c01bc526afc3

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential git ruby ruby-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD []
WORKDIR /work

LABEL name=pre-commit \
      maintainer="Dafydd Jones <dafydd@techneg.it>"
