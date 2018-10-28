FROM google/cloud-sdk:alpine
MAINTAINER Ahmed Elshalaby <a.elshalaby@e-tawasol.com>
ENV PATH="/google-cloud-sdk/bin:$PATH"
WORKDIR /
RUN gcloud components install kubectl
RUN apk update
RUN apk add gettext docker openrc
RUN rc-update add docker boot
