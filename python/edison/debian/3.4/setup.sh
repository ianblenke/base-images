#!/bin/bash
set -e

set -x \
&& buildDeps='
	curl 
	build-essential 
	ca-certificates 
	cmake 
	git-core 
	libpcre3-dev 
	swig 
	' \
&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \
&& git clone https://github.com/intel-iot-devkit/mraa.git \
&& cd mraa \
&& git checkout $MRAA_COMMIT \
&& mkdir build && cd build \
&& cmake .. -DBUILDSWIGNODE=OFF -DBUILDPYTHON3=ON -DPYTHON_INCLUDE_DIR=/usr/local/include/python3.5m/ -DPYTHON_LIBRARY=/usr/local/lib/libpython3.so \
&& make -j $(nproc) \
&& make install \
&& apt-get purge -y --auto-remove $buildDeps \
&& cd / \
&& rm -rf mraa

echo "/usr/local/lib/i386-linux-gnu/" >> /etc/ld.so.conf \
&& ldconfig
