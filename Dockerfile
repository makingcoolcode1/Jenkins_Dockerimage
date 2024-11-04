
FROM jenkins/jenkins:lts 

USER root

RUN apt-get update && \
    apt-get install -y python3.11-venv python3=pip && \
    rm -rf /var/lib/apt/lists/*

USER jenkins