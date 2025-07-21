#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.4/Dockerfile -t cimg/ruby:3.4.5 -t cimg/ruby:3.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.4/node/Dockerfile -t cimg/ruby:3.4.5-node -t cimg/ruby:3.4-node --push .
docker buildx build --platform=linux/amd64 --file 3.4/browsers/Dockerfile -t cimg/ruby:3.4.5-browsers -t cimg/ruby:3.4-browsers --push .
