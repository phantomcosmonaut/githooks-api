FROM python:3.8-buster
COPY . /pkg
WORKDIR /pkg
RUN chmod +rx ./installation.sh
RUN chmod +rx ./ngbuild.sh
RUN ./installation.sh
CMD ["python", "server.py"]
