FROM continuumio/miniconda3

RUN conda remove certifi
RUN conda install certifi
RUN conda install jupyter -y --quiet
RUN mkdir -p /opt/notebooks

CMD ["bash", "-c", "jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"]
