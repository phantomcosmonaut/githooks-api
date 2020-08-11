FROM python:3.8-buster
COPY . .
RUN installation.sh
WORKDIR /src
CMD ["python", "server.py"]