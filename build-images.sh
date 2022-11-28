#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.7 -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.7-node -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.7-browsers -t cimg/ruby:2.7-browsers .
docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.5 -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.5-node -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.5-browsers -t cimg/ruby:3.0-browsers .
docker build --file 3.1/Dockerfile -t cimg/ruby:3.1.3 -t cimg/ruby:3.1 .
docker build --file 3.1/node/Dockerfile -t cimg/ruby:3.1.3-node -t cimg/ruby:3.1-node .
docker build --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.3-browsers -t cimg/ruby:3.1-browsers .
