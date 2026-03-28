FROM apache/airflow:2.8.1
USER root

# Instalar Java para el motor apache spark
RUN apt-get update \
    && apt-get install -y --no-install-recommends openjdk-17-jre-headless \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

USER airflow
# Instalar dependencias de Python
RUN pip install --no-cache-dir pyspark  pandas requests sqlalchemy psycopg2-binary tenacity dbt-postgres

