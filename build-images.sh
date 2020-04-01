#!/usr/bin/env bash

docker build --file 2.5/Dockerfile -t cimg/ruby:2.5.8  -t cimg/ruby:2.5 .
docker build --file 2.5/node/Dockerfile -t cimg/ruby:2.5.8-node  -t cimg/ruby:2.5-node .
