#!/usr/bin/env bash

docker build --file 2.4/Dockerfile -t cimg/ruby:2.4.10  -t cimg/ruby:2.4 .
docker build --file 2.4/node/Dockerfile -t cimg/ruby:2.4.10-node  -t cimg/ruby:2.4-node .
