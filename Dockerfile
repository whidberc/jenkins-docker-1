FROM registry.fedoraproject.org/fedora:34

WORKDIR /usr/src/myapp
COPY requirements.txt ./

RUN dnf install -y python3 python3-pip \
  && python3 -m pip install --no-cache --upgrade setuptools wheel \
  && python3 -m pip install --no-cache -r requirements.txt \
  && rm -rf /var/cache/dnf

COPY . .

ENTRYPOINT ["python3"]