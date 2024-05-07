# Usamos una imagen base de JDK, que es necesaria para Maven
FROM docker.io/openjdk:17-alpine

# Instalar wget para las descargas y bash
RUN apk add --no-cache wget bash

# Establecer las versiones de Maven y Helm
ENV MAVEN_VERSION 3.9.0
ENV HELM_VERSION v3.10.1

# Instalar Maven 3.9.0
RUN wget --no-check-certificate https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -P /tmp && \
    tar -xzf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/maven && \
    rm /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Agregar Maven al PATH
ENV PATH="/opt/maven/bin:${PATH}"

# Instalar Helm v3.10.1
RUN wget --no-check-certificate https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O /tmp/helm.tar.gz && \
    tar -xzf /tmp/helm.tar.gz -C /tmp && \
    mv /tmp/linux-amd64/helm /usr/local/bin/helm && \
    rm -rf /tmp/linux-amd64 /tmp/helm.tar.gz

# Comando por defecto cuando se crea un contenedor a partir de esta imagen
ENTRYPOINT ["/bin/bash"]
