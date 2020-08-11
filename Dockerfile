FROM python:3.8-slim-buster
COPY . .
RUN apt-get update
RUN apt-get -y install curl
RUN bin/bash curl -sL https://deb.nodesource.com/setup_12.x | -E bash -
RUN apt install npm
RUN echo "node version: " node --version
RUN apt install git
RUN git clone https://github.com/phantomcosmonaut/angular-gitapi.git
RUN pip install -r requirements.txt
WORKDIR /src
CMD ["python", "server.py"]