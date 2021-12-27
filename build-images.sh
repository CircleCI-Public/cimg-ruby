#!/usr/bin/env bash

docker build --file 3.1/Dockerfile -t cimg/ruby:3.1.0  -t cimg/ruby:3.1 .
docker build --file 3.1/node/Dockerfile -t cimg/ruby:3.1.0-node  -t cimg/ruby:3.1-node .
docker build --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.0-browsers  -t cimg/ruby:3.1-browsers .
