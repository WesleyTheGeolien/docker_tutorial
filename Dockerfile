FROM jupyter/scipy-notebook

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY data /home/jovyan/work/Data
COPY src/* /home/jovyan/work/
