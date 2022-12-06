FROM debian:latest

# install
RUN apt update
RUN apt upgrade
RUN apt install -y python3-pip
RUN pip install --pre pyload-ng[all]

# set workdir
RUN mkdir /app
RUN mkdir /app/download
RUN mkdir /app/config
WORKDIR /app

# run the command on container startup
CMD pyload --storagedir /app/download --userdir /app/config