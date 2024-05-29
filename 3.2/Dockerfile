# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

# By policy, the base image tag should be a quarterly tag unless there's a
# specific reason to use a different one. This means January, April, July, or
# October.

FROM joinswoop/base:2024.02

LABEL maintainer="CircleCI Execution Team <eng-execution@circleci.com>"

ENV RUBY_VERSION=3.2.2 \
	RUBY_MAJOR=3.2

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		autoconf \
		bison \
		dpkg-dev \
		# Rails dep
		ffmpeg \
		# until the base image has it
		libcurl4-openssl-dev \
		libffi-dev \
		libgdbm6 \
		libgdbm-dev \
		# Rails dep
		libmysqlclient-dev \
		libncurses5-dev \
		# Rails dep
		libpq-dev \
		libreadline6-dev \
		# install libsqlite3-dev until the base image has it
		# Rails dep
		libsqlite3-dev \
		libssl-dev \
		# Rails dep
		libxml2-dev \
		libyaml-dev \
		# Rails dep
		memcached \
		# Rails dep
		mupdf \
		# Rails dep
		mupdf-tools \
		# Rails dep
		imagemagick \
		# Rails dep
		sqlite3 \
		zlib1g-dev \
		# YJIT dep
		rustc \
		# Jemalloc
		libjemalloc-dev \
    	# Build gems with Rust extensions dep
		clang-14 && \
	# For Ruby 3.0 install OpenSSL 1.1.1 to make it work on Ubuntu 20.04
	if [ "${RUBY_MAJOR}" == "3.0" ]; then \
		if [[ $(uname -m) == "x86_64" ]]; then \
			wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1f-1ubuntu2_amd64.deb; \
			wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl-dev_1.1.1f-1ubuntu2_amd64.deb; \
			wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb; \
		else \
			wget http://ports.ubuntu.com/pool/main/o/openssl/openssl_1.1.1f-1ubuntu2_arm64.deb; \
			wget http://ports.ubuntu.com/pool/main/o/openssl/libssl-dev_1.1.1f-1ubuntu2_arm64.deb; \
			wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_arm64.deb; \
		fi && \
		sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2*.deb; \
		sudo dpkg -i libssl-dev_1.1.1f-1ubuntu2*.deb; \
		sudo dpkg -i openssl_1.1.1f-1ubuntu2*.deb; \
		rm -f *.deb; \
	fi && \
	# Skip installing gem docs
	echo "gem: --no-document" > ~/.gemrc && \
	mkdir -p ~/ruby && \
	downloadURL="https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR}/ruby-$RUBY_VERSION.tar.gz" && \
	curl -sSL $downloadURL | tar -xz -C ~/ruby --strip-components=1 && \
	cd ~/ruby && \
	autoconf && \
	./configure --enable-yjit --enable-shared --disable-install-doc && \
	make -j "$(nproc)" && \
	sudo make install && \
	mkdir ~/.rubygems && \
	sudo rm -rf ~/ruby /var/lib/apt/lists/* && \
	cd && \

	ruby --version && \
	gem --version && \
	MAKEFLAGS=-j"$(nproc)" sudo gem update --system && \
	gem --version && \
	bundle --version && \

	# Cleanup YJIT install deps
	sudo apt-get remove rustc libstd-rust*

ENV GEM_HOME /home/circleci/.rubygems
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
