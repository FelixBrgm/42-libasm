FROM --platform=linux/amd64 debian:bullseye

RUN apt-get update && \
    apt-get install git -y && \
    apt-get install nasm -y && \
    apt-get install gcc -y && \
    apt-get install python3 -y && \
    apt-get install make -y

RUN git clone https://github.com/FelixBrgm/.dotfiles.git ~/.dotfiles

RUN cd ~/.dotfiles && \
    chmod 777 ./setup.sh && \
    ./setup.sh

CMD ["tail", "-f", "/dev/null"]