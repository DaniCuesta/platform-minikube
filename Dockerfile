# Dockerfile
FROM docker.io/python:3.9

# Instala las dependencias necesarias para el script
RUN pip install --no-cache-dir requests influxdb-client

# Establece un directorio de trabajo para evitar conflictos con el entorno base
WORKDIR /app

