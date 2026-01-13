#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 4.0/Dockerfile -t cimg/ruby:4.0.1 -t cimg/ruby:4.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 4.0/node/Dockerfile -t cimg/ruby:4.0.1-node -t cimg/ruby:4.0-node --push .
docker buildx build --platform=linux/amd64 --file 4.0/browsers/Dockerfile -t cimg/ruby:4.0.1-browsers -t cimg/ruby:4.0-browsers --push .
