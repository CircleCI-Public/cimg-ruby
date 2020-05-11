#!/usr/bin/env bash

docker build --file 2.5/Dockerfile -t cimg/ruby:2.5.8  -t cimg/ruby:2.5 .
docker build --file 2.5/node/Dockerfile -t cimg/ruby:2.5.8-node  -t cimg/ruby:2.5-node .
docker build --file 2.6/Dockerfile -t cimg/ruby:2.6.6  -t cimg/ruby:2.6 .
docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.6-node  -t cimg/ruby:2.6-node .
docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.1  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.1-node  -t cimg/ruby:2.7-node .
