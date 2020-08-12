FROM nikolaik/python-nodejs:python3.8-nodejs14
COPY . .
RUN chmod +x installation.sh
RUN /installation.sh
CMD ["python", "server.py"]
