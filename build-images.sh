#!/usr/bin/env bash

docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.3  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.3-node  -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.3-browsers  -t cimg/ruby:2.7-browsers .
