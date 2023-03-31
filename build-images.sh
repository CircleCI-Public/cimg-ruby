#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.6 -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.6-node -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.6-browsers -t cimg/ruby:3.0-browsers .
