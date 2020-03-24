#!/usr/bin/env bash

docker build --file 2.6/Dockerfile -t cimg/ruby:2.6.5  -t cimg/ruby:2.6 .
docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.5-node  -t cimg/ruby:2.6-node .
