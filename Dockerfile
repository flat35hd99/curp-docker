FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y git graphviz graphviz-dev openmpi-bin libopenmpi-dev python3-pip \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir numpy==1.21.1

RUN git clone --depth 1 https://github.com/yamatolab/current-calculations-for-proteins.git curp \
    && cd curp \
    && pip install --no-cache-dir . \
    rm -rf *

CMD ["curp", "--help"]
