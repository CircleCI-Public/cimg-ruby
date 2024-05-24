#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.3/Dockerfile -t cimg/ruby:3.3.1 -t cimg/ruby:3.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.3/node/Dockerfile -t cimg/ruby:3.3.1-node -t cimg/ruby:3.3-node --push .
docker buildx build --platform=linux/amd64 --file 3.3/browsers/Dockerfile -t cimg/ruby:3.3.1-browsers -t cimg/ruby:3.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/Dockerfile -t cimg/ruby:3.2.4 -t cimg/ruby:3.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.2/node/Dockerfile -t cimg/ruby:3.2.4-node -t cimg/ruby:3.2-node --push .
docker buildx build --platform=linux/amd64 --file 3.2/browsers/Dockerfile -t cimg/ruby:3.2.4-browsers -t cimg/ruby:3.2-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/Dockerfile -t cimg/ruby:3.1.5 -t cimg/ruby:3.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/node/Dockerfile -t cimg/ruby:3.1.5-node -t cimg/ruby:3.1-node --push .
docker buildx build --platform=linux/amd64 --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.5-browsers -t cimg/ruby:3.1-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.0/Dockerfile -t cimg/ruby:3.0.7 -t cimg/ruby:3.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.0/node/Dockerfile -t cimg/ruby:3.0.7-node -t cimg/ruby:3.0-node --push .
docker buildx build --platform=linux/amd64 --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.7-browsers -t cimg/ruby:3.0-browsers --push .
