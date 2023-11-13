FROM ubuntu

WORKDIR /usr/src/myapp
COPY requirements.txt ./

RUN apt-get update -y

COPY . .

ENTRYPOINT ["python3"]