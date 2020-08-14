FROM nikolaik/python-nodejs:python3.8-nodejs14
COPY . /pkg
WORKDIR /pkg
RUN chmod +x ./installation.sh
RUN chmod +x ./ngbuild.sh
RUN ./installation.sh
RUN ./ngbuild.sh
CMD ["python", "server.py"]
