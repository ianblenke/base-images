FROM resin/nuc-alpine:3.4

RUN apk add --update \
		ca-certificates \
		curl \
		wget \
	&& rm -rf /var/cache/apk/*
ONBUILD RUN echo 'This repository is deprecated. Please check https://docs.resin.io/runtime/resin-base-images/ for information about Resin docker images.' 
