FROM continuumio/anaconda3:latest

WORKDIR /workspace
COPY env.yml workspace/env.yml
RUN conda env create -f workspace/env.yml
