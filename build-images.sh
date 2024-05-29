#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/Dockerfile -t cimg/ruby:3.1.6 -t cimg/ruby:3.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.1/node/Dockerfile -t cimg/ruby:3.1.6-node -t cimg/ruby:3.1-node --push .
docker buildx build --platform=linux/amd64 --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.6-browsers -t cimg/ruby:3.1-browsers --push .
