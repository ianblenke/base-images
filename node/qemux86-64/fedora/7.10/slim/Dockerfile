# AUTOGENERATED FILE
FROM resin/qemux86-64-fedora:latest

ENV NODE_VERSION 7.10.0

RUN curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
	&& echo "9da0e99091897795491d21d58c40186f75ca7bf505d145d1a2e558f8c754a81b  node-v7.10.0-linux-x64.tar.gz" | sha256sum -c - \
	&& tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
	&& rm "node-v$NODE_VERSION-linux-x64.tar.gz" \
	&& npm config set unsafe-perm true -g --unsafe-perm \
	&& rm -rf /tmp/*

CMD ["echo","'No CMD command was set in Dockerfile! Details about CMD command could be found in Dockerfile Guide section in our Docs. Here's the link: http://docs.resin.io/deployment/dockerfile"]
