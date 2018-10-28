FROM google/cloud-sdk:latest
MAINTAINER Ahmed Elshalaby <a.elshalaby@e-tawasol.com>
ENV PATH="/google-cloud-sdk/bin:$PATH"
WORKDIR /
RUN apk update
RUN apk add gettext



#install Kubectl
#credit to wernight/kubectl container

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl
ENV HOME=/config
RUN set -x && \
    apk add --no-cache curl ca-certificates && \
    chmod +x /usr/local/bin/kubectl && \
    \
    # Create non-root user (with a randomly chosen UID/GUI).
    adduser kubectl -Du 2342 -h /config && \
    \
    # Basic check it works.
    kubectl version --client

USER kubectl
