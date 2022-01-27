FROM ubuntu



RUN apt-get update 

CMD ["echo", "It's image of our repo"]

FROM ubuntu:18.04

MAINTAINER kerven

RUN apt-get update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade

RUN pip3 -q install beautifulsoup4
RUN pip3 -q install jupyterlab


RUN mkdir src
WORKDIR src/
COPY . /src


CMD ["notebook"]
