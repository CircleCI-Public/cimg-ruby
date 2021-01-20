#!/usr/bin/env bash

docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.0  -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.0-node  -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.0-browsers  -t cimg/ruby:3.0-browsers .
docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.2  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.2-node  -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.2-browsers  -t cimg/ruby:2.7-browsers .
docker build --file 2.6/Dockerfile -t cimg/ruby:2.6.6  -t cimg/ruby:2.6 .
docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.6-node  -t cimg/ruby:2.6-node .
docker build --file 2.6/browsers/Dockerfile -t cimg/ruby:2.6.6-browsers  -t cimg/ruby:2.6-browsers .
docker build --file 2.5/Dockerfile -t cimg/ruby:2.5.8  -t cimg/ruby:2.5 .
docker build --file 2.5/node/Dockerfile -t cimg/ruby:2.5.8-node  -t cimg/ruby:2.5-node .
docker build --file 2.5/browsers/Dockerfile -t cimg/ruby:2.5.8-browsers  -t cimg/ruby:2.5-browsers .
