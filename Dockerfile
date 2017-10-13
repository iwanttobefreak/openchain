FROM debian
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/openchain/docker.git openchain && \
    cd openchain && \
    cp templates/server.yml docker-compose.yml && \
    mkdir data && \
    cp templates/config.json data/config.json && \
    nano data/config.json && \
    docker-compose up -d

CMD bash
