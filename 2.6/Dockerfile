# vim:set ft=dockerfile:

FROM cimg/base:stable

LABEL maintainer="CircleCI Community & Partner Engineering Team <community-partner@circleci.com>"

# Gem docs aren't useful in a CI environment
RUN echo "gem: --no-document" >> ~/.gemrc

ENV RUBY_VERSION 2.6.4
ENV RUBY_MAJOR 2.6
ENV RUBY_DOWNLOAD_SHA256 4fc1d8ba75505b3797020a6ffc85a8bcff6adc4dabae343b6572bf281ee17937

RUN gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
	curl -sSL https://get.rvm.io | bash -s stable --ruby=$RUBY_VERSION && \
	echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc

WORKDIR /root/project