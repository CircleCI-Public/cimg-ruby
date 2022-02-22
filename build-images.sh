#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 3.1/Dockerfile -t cimg/ruby:3.1.1  -t cimg/ruby:3.1 .
docker build --file 3.1/node/Dockerfile -t cimg/ruby:3.1.1-node  -t cimg/ruby:3.1-node .
docker build --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.1-browsers  -t cimg/ruby:3.1-browsers .
