#!/usr/bin/env bash

docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.2-node .

docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.2  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.2-node  -t cimg/ruby:2.7-node .
