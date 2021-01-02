FROM postgres:13.1

RUN apt-get -y update && apt-get install -y \
    vim \
    git

WORKDIR /home
