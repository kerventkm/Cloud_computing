FROM ubuntu:20.04
MAINTAINER kerven
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.8 python3-pip
RUN pip3 -q install pip --upgrade
RUN pip3 -q install bs4
RUN pip3 -q install jupyter
RUN mkdir src
WORKDIR src/
COPY . /src
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
