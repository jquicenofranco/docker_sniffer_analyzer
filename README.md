# docker_sniffer_analyzer
Contenedor con el fin de analizar archivos con extension pcapng

# Ejecutar contenedor
1. docker build -t pcap-url-extractor .
2. docker run -v ruta_archivos_pcapng:/pcap pcap-url-extractor nombre_archivo_pcapng.pcapng
