FROM google/cloud-sdk:alpine
MAINTAINER Ahmed Elshalaby <a.elshalaby@e-tawasol.com>
ENV PATH="/google-cloud-sdk/bin:$PATH"
WORKDIR /
RUN apt-get update
RUN gcloud components install kubectl
RUN apt-get add gettext
