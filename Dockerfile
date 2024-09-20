FROM ubuntu:22.04

# Actualizar los repositorios e instalar tshark
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tshark && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /pcap

COPY extract_urls.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/extract_urls.sh

ENTRYPOINT ["extract_urls.sh"]