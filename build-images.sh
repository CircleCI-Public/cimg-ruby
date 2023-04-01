#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.8 -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.8-node -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.8-browsers -t cimg/ruby:2.7-browsers .
docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.6 -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.6-node -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.6-browsers -t cimg/ruby:3.0-browsers .
docker build --file 3.1/Dockerfile -t cimg/ruby:3.1.4 -t cimg/ruby:3.1 .
docker build --file 3.1/node/Dockerfile -t cimg/ruby:3.1.4-node -t cimg/ruby:3.1-node .
docker build --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.4-browsers -t cimg/ruby:3.1-browsers .
docker build --file 3.2/Dockerfile -t cimg/ruby:3.2.2 -t cimg/ruby:3.2 .
docker build --file 3.2/node/Dockerfile -t cimg/ruby:3.2.2-node -t cimg/ruby:3.2-node .
docker build --file 3.2/browsers/Dockerfile -t cimg/ruby:3.2.2-browsers -t cimg/ruby:3.2-browsers .
