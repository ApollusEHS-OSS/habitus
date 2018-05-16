#use the golang base image
FROM golang:1.8
MAINTAINER Daniël van Gils

#get govener for package management
RUN go get -u github.com/kardianos/govendor

#get all the go testing stuff
RUN go get github.com/onsi/ginkgo/ginkgo
RUN go get github.com/onsi/gomega

# Installing Golang-Dep
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

#copy the source files
RUN mkdir -p /usr/local/go/src/github.com/cloud66/habitus
COPY . /usr/local/go/src/github.com/cloud66/habitus

#switch to our app directory
WORKDIR /usr/local/go/src/github.com/cloud66/habitus
