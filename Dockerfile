# Dockerfile
FROM docker.io/python:3.9-slim

# Instala las dependencias necesarias para el script
RUN pip install --no-cache-dir influxdb-client

# Establece un directorio de trabajo para evitar conflictos con el entorno base
WORKDIR /app

