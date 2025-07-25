#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.3/Dockerfile -t cimg/ruby:3.3.9 -t cimg/ruby:3.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.3/node/Dockerfile -t cimg/ruby:3.3.9-node -t cimg/ruby:3.3-node --push .
docker buildx build --platform=linux/amd64 --file 3.3/browsers/Dockerfile -t cimg/ruby:3.3.9-browsers -t cimg/ruby:3.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/Dockerfile -t cimg/ruby:3.2.9 -t cimg/ruby:3.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/node/Dockerfile -t cimg/ruby:3.2.9-node -t cimg/ruby:3.2-node --push .
docker buildx build --platform=linux/amd64 --file 3.2/browsers/Dockerfile -t cimg/ruby:3.2.9-browsers -t cimg/ruby:3.2-browsers --push .
