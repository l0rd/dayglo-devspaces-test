FROM continuumio/anaconda3
RUN conda install jupyter -y --quiet
RUN mkdir -p /opt/notebooks

CMD ["bash", "-c", "jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"]
