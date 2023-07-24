#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker run -e QEMU_CREDENTIAL=yes -e QEMU_PERSISTENT=yes --privileged aptman/qus:latest -s -- -p
docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/Dockerfile -t cimg/ruby:3.2.2 -t cimg/ruby:3.2 --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/node/Dockerfile -t cimg/ruby:3.2.2-node -t cimg/ruby:3.2-node --push .
# docker buildx build --platform=linux/amd64 --file 3.2/browsers/Dockerfile -t cimg/ruby:3.2.2-browsers -t cimg/ruby:3.2-browsers --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/Dockerfile -t cimg/ruby:3.1.4 -t cimg/ruby:3.1 --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/node/Dockerfile -t cimg/ruby:3.1.4-node -t cimg/ruby:3.1-node --push .
# docker buildx build --platform=linux/amd64 --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.4-browsers -t cimg/ruby:3.1-browsers --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 3.0/Dockerfile -t cimg/ruby:3.0.6 -t cimg/ruby:3.0 --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file 3.0/node/Dockerfile -t cimg/ruby:3.0.6-node -t cimg/ruby:3.0-node --push .
# docker buildx build --platform=linux/amd64 --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.6-browsers -t cimg/ruby:3.0-browsers --push .
