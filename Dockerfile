FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT apachectl -D FOREGROUND
