FROM ubuntu:20.04

RUN apt-get update
RUN apt install -y python3

WORKDIR /home/myapp
COPY . .

RUN cd /home/myapp

EXPOSE 8099

CMD ["python3", "-m", "http.server", "8099"]
