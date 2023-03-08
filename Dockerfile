FROM continuumio/anaconda3
RUN apt update

RUN conda create -n py39 python=3.9 pip
RUN echo "source activate py39" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
RUN mkdir -p /opt/notebooks
RUN /opt/conda/envs/py39/bin/pip install jupyter


CMD ["bash", "-c", "/opt/conda/envs/py39/bin/jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"]
