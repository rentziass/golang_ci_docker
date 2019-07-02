FROM golang:1.12
MAINTAINER rentziass@gmail.com
RUN apt-get update
RUN apt-get install -y python python-pip ca-certificates groff less bash git jq file curl
RUN pip --no-cache-dir install awscli
RUN apt-get install -y zip

# Make Git use SSH for Go modules
RUN git config --global url."git@github.com:".insteadOf "https://github.com/"
