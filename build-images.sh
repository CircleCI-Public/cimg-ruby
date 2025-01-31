#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create ccitest
docker buildx create --use ccitest
# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/2.7-browsers/Dockerfile -t ccitest/ruby:2.7-browser --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/2.7.7-browsers/Dockerfile -t ccitest/ruby:2.7.7-browsers --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/2.7.8-browsers/Dockerfile -t ccitest/ruby:2.7.8-browsers --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.0.5-browsers/Dockerfile -t ccitest/ruby:3.0.5-browsers --push .
# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.1.3-browsers/Dockerfile -t ccitest/ruby:3.1.3-browsers --push .

# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.0.6-browsers/Dockerfile -t ccitest/ruby:3.0.6-browsers --push .

# docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.1.4-browsers/Dockerfile -t ccitest/ruby:3.1.4-browsers --push .

docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.2.0-browsers/Dockerfile -t ccitest/ruby:3.2.0-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.2.1-browsers/Dockerfile -t ccitest/ruby:3.2.1-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.2.2-browsers/Dockerfile -t ccitest/ruby:3.2.2-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.2.3-browsers/Dockerfile -t ccitest/ruby:3.2.3-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file temp-browser-fixes/3.3.0-browsers/Dockerfile -t ccitest/ruby:3.3.0-browsers --push .
