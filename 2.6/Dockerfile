# vim:set ft=dockerfile:

FROM cimg/base:2019.10

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Skip installing gem docs
RUN mkdir -p /usr/local/etc; \
	{ \
		echo 'install: --no-document'; \
		echo 'update: --no-document'; \
	} >> /usr/local/etc/gemrc

ENV RUBY_VERSION=2.6.3 \
	RUBY_MAJOR=2.6

RUN apt-get update && apt-get install -y --no-install-recommends \
		autoconf \
		bison \
		dpkg-dev \
		libffi-dev \
		libgdbm5 \
		libgdbm-dev \
		libncurses5-dev \
		libreadline6-dev \
		libssl-dev \
		libyaml-dev \
		zlib1g-dev && \
	mkdir -p /usr/src/ruby && \
	downloadURL="https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR}/ruby-$RUBY_VERSION.tar.gz" && \
	curl -sSL $downloadURL | tar -xz -C /usr/src/ruby --strip-components=1 && \
	cd /usr/src/ruby && \
	autoconf && \
	./configure \
		--disable-install-doc \
		--enable-shared && \
	make -j "$(nproc)" && \
	make install && \
	cd / && \
	rm -rf /usr/src/ruby /var/lib/apt/lists/*

RUN ruby --version && \
	gem --version && \
	gem update --system && \
	gem --version && \
	bundle --version

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_PATH="$GEM_HOME" \
	BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME"
# path recommendation: https://github.com/bundler/bundler/pull/6469#issuecomment-383235438
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
# adjust permissions of a few directories for running "gem install" as an arbitrary user
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

WORKDIR /root/project
