# vim:set ft=dockerfile:

FROM cimg/base:2020.05

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV RUBY_VERSION=2.7.1 \
	RUBY_MAJOR=2.7

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
		autoconf \
		bison \
		dpkg-dev \
		libffi-dev \
		libgdbm5 \
		libgdbm-dev \
		#remove once on cimg/base:2020.06 or later
		libmariadb-dev \
		#remove once on cimg/base:2020.06 or later
		libmariadb-dev-compat \
		#remove once on cimg/base:2020.06 or later
		libpq-dev \
		libncurses5-dev \
		libreadline6-dev \
		libssl-dev \
		libyaml-dev \
		#remove once on cimg/base:2020.06 or later
		tzdata \
		zlib1g-dev && \
	# Skip installing gem docs
	echo "gem: --no-document" > ~/.gemrc && \
	mkdir -p ~/ruby && \
	downloadURL="https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR}/ruby-$RUBY_VERSION.tar.gz" && \
	curl -sSL $downloadURL | tar -xz -C ~/ruby --strip-components=1 && \
	cd ~/ruby && \
	autoconf && \
	./configure && \
	make -j "$(nproc)" && \
	sudo make install && \
	mkdir ~/.rubygems && \
	sudo rm -rf ~/ruby /var/lib/apt/lists/* && \
	cd && \

	ruby --version && \
	gem --version && \
	sudo gem update --system && \
	gem --version && \
	bundle --version

ENV GEM_HOME /home/circleci/.rubygems
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH

