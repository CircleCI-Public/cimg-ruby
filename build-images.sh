#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.2/Dockerfile -t cimg/ruby:3.2.1 -t cimg/ruby:3.2 .
docker build --file 3.2/node/Dockerfile -t cimg/ruby:3.2.1-node -t cimg/ruby:3.2-node .
docker build --file 3.2/browsers/Dockerfile -t cimg/ruby:3.2.1-browsers -t cimg/ruby:3.2-browsers .
