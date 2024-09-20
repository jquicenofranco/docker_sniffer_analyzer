#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Por favor, proporciona el nombre del archivo .pcapng como argumento."
    exit 1
fi

tshark -r "$1" -Y "http.request.method" -T fields -e http.host -e http.request.uri | sed 's/\t//' | sort | uniq
tshark -r "$1" -Y "tls.handshake.type==1" -T fields -e tls.handshake.extensions_server_name | sort | uniq