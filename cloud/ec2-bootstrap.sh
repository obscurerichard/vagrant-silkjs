#!/bin/bash
# Run this as root on a new EC2 node, or use it as instance data
(
	apt-get install -y git build-essential ruby rubygems && \
	gem install chef && \
	git clone --recursive https://github.com/obscurerichard/vagrant-silkjs.git && \
	vagrant-silkjs/cloud/provision.sh
) 2>&1 | logger -t silkjs
