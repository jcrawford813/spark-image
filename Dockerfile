FROM ghcr.io/apache/spark-docker/spark:3.5.4-scala2.12-java17-python3-ubuntu

USER root

RUN set -ex; \
    apt-get update; \
    apt-get upgrade -y; \
    rm -rf /var/lib/apt/lists/*; \
    pip install pandas pyarrow numpy

USER spark