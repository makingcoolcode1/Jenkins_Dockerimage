# Use the official Jenkins image as the base
FROM jenkins/jenkins:lts

# Switch to the root user to install packages
USER root

# Install required packages, like python3-venv
RUN apt-get update && \
    apt-get install -y python3-venv python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install other dependencies as needed
RUN pip3 install requests

# Switch back to the Jenkins user
USER jenkins
