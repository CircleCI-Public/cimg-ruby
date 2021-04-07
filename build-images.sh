#!/usr/bin/env bash

docker build --file 2.5/Dockerfile -t cimg/ruby:2.5.9  -t cimg/ruby:2.5 .
docker build --file 2.5/node/Dockerfile -t cimg/ruby:2.5.9-node  -t cimg/ruby:2.5-node .
docker build --file 2.5/browsers/Dockerfile -t cimg/ruby:2.5.9-browsers  -t cimg/ruby:2.5-browsers .
docker build --file 2.6/Dockerfile -t cimg/ruby:2.6.7  -t cimg/ruby:2.6 .
docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.7-node  -t cimg/ruby:2.6-node .
docker build --file 2.6/browsers/Dockerfile -t cimg/ruby:2.6.7-browsers  -t cimg/ruby:2.6-browsers .
docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.3  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.3-node  -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.3-browsers  -t cimg/ruby:2.7-browsers .
docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.1  -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.1-node  -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.1-browsers  -t cimg/ruby:3.0-browsers .
