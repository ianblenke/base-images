# AUTOGENERATED FILE
FROM resin/edison-debian:jessie

ENV NODE_VERSION 5.12.0

RUN buildDeps='curl build-essential python' \
	&& set -x \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -SLO "http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-i386.tar.gz" \
	&& echo "566dac853617197601895295e3b679561c908186f9fb79a66668dcb29d689cf2  node-v5.12.0-linux-i386.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-i386.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-i386.tar.gz" \
	&& npm install mraa@$MRAA_VERSION \
	&& npm cache clear \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& apt-get purge -y --auto-remove $buildDeps \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/deployment/dockerfile"]
ONBUILD RUN echo 'This repository is deprecated. Please check https://docs.resin.io/runtime/resin-base-images/ for information about Resin docker images.' 
