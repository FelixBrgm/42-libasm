FROM --platform=linux/amd64 debian:bullseye

RUN apt-get update && \
    apt-get install git -y && \
    apt-get install nasm -y && \
    apt-get install gcc -y && \
    apt-get install python3 -y && \
    apt-get install make -y

# .bashrc
RUN echo 'export PS1="\W> "' >> ~/.bashrc
RUN echo 'alias ll='ls -la'' >> ~/.bashrc

CMD ["tail", "-f", "/dev/null"]
