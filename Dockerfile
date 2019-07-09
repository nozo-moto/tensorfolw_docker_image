FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN apt update && apt install -y vim && python3 -m pip install keras sklearn
