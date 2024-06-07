FROM python:3.12.4-slim-bookworm@sha256:ee6864930c0ec126965614ca3da44ddbd2805b692605fdbfcf28d5f6b463fb3b

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
