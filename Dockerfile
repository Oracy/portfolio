#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:14.04

# Atualize os repositórios e instale a AWS CLI
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    groff \
    less \
    && pip3 install --upgrade pip \
    && pip3 install awscli

# # Add files.
# ADD root/.bashrc /root/.bashrc
# ADD root/.gitconfig /root/.gitconfig
# ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
