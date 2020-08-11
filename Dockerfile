FROM nikolaik/python-nodejs:python3.8-nodejs14
COPY . .
RUN installation.sh
WORKDIR /src
CMD ["python", "server.py"]