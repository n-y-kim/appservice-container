FROM ubuntu:latest

#update package manager and install with yes flag python & pip
RUN apt-get update && apt-get install -y python3.10 python3-pip wget unzip\
    && pip3 install pynecone

RUN wget -L https://github.com/n-y-kim/pynecone-play/archive/refs/heads/main.zip \
    && unzip main.zip \
    && rm -rf main.zip

RUN cd pynecone-play-main/myapp \
    && pc run