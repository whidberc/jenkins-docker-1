FROM ubuntu

WORKDIR /usr/src/myapp
COPY requirements.txt ./

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN echo Hola

COPY . .

ENTRYPOINT ["python3"]