#!/usr/bin/env bash

docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.2  -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.2-node  -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.2-browsers  -t cimg/ruby:3.0-browsers .
