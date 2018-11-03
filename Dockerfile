FROM google/cloud-sdk:alpine
MAINTAINER Ahmed Elshalaby <a.elshalaby@e-tawasol.com>
ENV PATH="/google-cloud-sdk/bin:$PATH"
WORKDIR /
RUN apk update
RUN apk add docker
RUN gcloud components install kubectl

