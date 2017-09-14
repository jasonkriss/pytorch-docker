FROM pytorch/pytorch
RUN pip install ipykernel \
  jupyter \
  matplotlib \
  pandas \
  visdom
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run.sh /
EXPOSE 8888
EXPOSE 8097
CMD ["/run.sh", "--allow-root"]
