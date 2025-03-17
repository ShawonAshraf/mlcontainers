FROM continuumio/miniconda3:latest

COPY env.yml tmp/env.yml
WORKDIR /workspaces

# creates directories for hf cache and wandb keys
RUN mkdir -p /workspaces/.cache/huggingface
RUN chmod -R 777 /workspaces/.cache/huggingface
ENV HF_HOME=/workspaces/.cache/huggingface


RUN conda install -c conda-forge cxx-compiler

# creates the env from the yml config
RUN conda env create -f /tmp/env.yml 
