FROM registry.fedoraproject.org/fedora:34

RUN dnf install -y python3 python3-pip

COPY . .

ENTRYPOINT ["python3"]