FROM alpine:3.4
MAINTAINER Pavol Noha <pavol.noha@google.com>

# Add common packages & bash
RUN apk add --no-cache bind-tools bash

ENV S6_OVERLAY_VERSION=v1.18.1.1 

# Add s6-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /

ENTRYPOINT ["/init"]
CMD []
