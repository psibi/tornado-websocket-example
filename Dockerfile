FROM ubuntu

MAINTAINER Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

RUN apt-get update -y && apt-get install git python python3-pip -y

COPY . /src

RUN cd /src && pip install -r requirements.txt

EXPOSE 8888

WORKDIR /src

CMD ["python3", "app.py"]
