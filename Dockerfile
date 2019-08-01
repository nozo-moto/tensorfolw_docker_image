FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN apt update && apt install -y vim graphviz wget libsm6 libxext6 libxrender-dev tmux && python3 -m pip install keras sklearn pydot_ng graphviz nltk pandas tqdm Pillow opencv-python pillow
RUN apt install -y make automake autoconf autotools-dev m4 mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git &&\
    cd mecab-ipadic-neologd &&\ 
    sed -e "s/sudo//g" /tf/mecab-ipadic-neologd/bin/../libexec/install-mecab-ipadic-neologd.sh > /tf/mecab-ipadic-neologd/bin/../libexec/install-mecab-ipadic-neologd.sh &&\
     ./bin/install-mecab-ipadic-neologd -n -a -y
RUN python3 -m pip install mecab-python3
