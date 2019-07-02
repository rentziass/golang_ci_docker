FROM golang:1.12
MAINTAINER rentziass@gmail.com
RUN apt-get update
RUN apt-get install -y python python-pip ca-certificates groff less bash git jq file curl
RUN pip --no-cache-dir install awscli
RUN apt-get install -y zip
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
