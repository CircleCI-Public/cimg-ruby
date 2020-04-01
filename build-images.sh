#!/usr/bin/env bash

docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.1  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.1-node  -t cimg/ruby:2.7-node .
