FROM jasonkriss/pytorch-base
RUN pip install  --process-dependency-links ipykernel \
  jupyter \
  matplotlib \
  pandas \
  visdom \
  lmdb \
  detonator
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run.sh /
EXPOSE 8888
EXPOSE 8097
CMD ["/run.sh", "--allow-root"]
