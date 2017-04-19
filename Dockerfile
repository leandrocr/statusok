FROM golang

RUN apt-get update \
    && apt-get install -y unzip

RUN cd /opt \
    && wget https://github.com/sanathp/statusok/releases/download/0.1.1/statusok_linux.zip \
    && unzip statusok_linux.zip

WORKDIR /opt/statusok_linux

ENTRYPOINT ./statusok --config config.json
