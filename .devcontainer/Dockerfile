FROM --platform=linux/amd64 debian:bullseye

RUN apt-get update && \
    apt-get install git -y && \
    apt-get install nasm -y && \
    apt-get install gcc -y

RUN git clone https://github.com/FelixBrgm/.dotfiles.git ~/.dotfiles


CMD ["tail", "-f", "/dev/null"]