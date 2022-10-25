FROM ubuntu:latest

RUN apt-get update && apt-get install -y git graphviz graphviz-dev openmpi-bin libopenmpi-dev python3-pip
RUN pip install numpy==1.21.1

RUN git clone --depth 1 https://github.com/yamatolab/current-calculations-for-proteins.git curp
WORKDIR /curp
RUN pip install .

CMD ["curp", "--help"]
