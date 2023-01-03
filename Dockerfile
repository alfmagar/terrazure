FROM alpine:latest
ENV TF_RELEASE=1.3.6
RUN apk update && apk upgrade
RUN apk add py3-pip gcc musl-dev python3 python3-dev libffi-dev openssl-dev cargo make bash
RUN pip3 install --upgrade pip && pip3 install --upgrade setuptools
RUN pip3 install --upgrade wheel
RUN pip3 install cryptography
RUN pip3 install azure-cli
RUN pip3 install checkov
RUN wget https://releases.hashicorp.com/terraform/${TF_RELEASE}/terraform_${TF_RELEASE}_linux_amd64.zip
RUN unzip terraform_${TF_RELEASE}_linux_amd64.zip
RUN mv terraform /usr/bin/terraform
CMD sh