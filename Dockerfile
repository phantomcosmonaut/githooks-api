FROM python:3.8-slim-buster
COPY . .
RUN pip install -r requirements.txt
RUN apt-get npm
RUN apt-get git
RUN git clone https://github.com/phantomcosmonaut/angular-gitapi.git
WORKDIR /src
CMD ["python", "server.py"]