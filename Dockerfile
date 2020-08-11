FROM python:3.8-slim-buster
COPY . .
RUN pip install -r requirements.txt
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt install npm
RUN echo "node version: " node --version
RUN apt install git
RUN git clone https://github.com/phantomcosmonaut/angular-gitapi.git
WORKDIR /src
CMD ["python", "server.py"]