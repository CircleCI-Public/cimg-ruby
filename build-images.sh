#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 2.6/Dockerfile -t cimg/ruby:2.6.10  -t cimg/ruby:2.6 .
docker build --file 2.6/node/Dockerfile -t cimg/ruby:2.6.10-node  -t cimg/ruby:2.6-node .
docker build --file 2.6/browsers/Dockerfile -t cimg/ruby:2.6.10-browsers  -t cimg/ruby:2.6-browsers .
docker build --file 2.7/Dockerfile -t cimg/ruby:2.7.6  -t cimg/ruby:2.7 .
docker build --file 2.7/node/Dockerfile -t cimg/ruby:2.7.6-node  -t cimg/ruby:2.7-node .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.6-browsers  -t cimg/ruby:2.7-browsers .
docker build --file 3.0/Dockerfile -t cimg/ruby:3.0.1  -t cimg/ruby:3.0 .
docker build --file 3.0/node/Dockerfile -t cimg/ruby:3.0.1-node  -t cimg/ruby:3.0-node .
docker build --file 3.0/browsers/Dockerfile -t cimg/ruby:3.0.1-browsers  -t cimg/ruby:3.0-browsers .
docker build --file 3.1/Dockerfile -t cimg/ruby:3.1.2  -t cimg/ruby:3.1 .
docker build --file 3.1/node/Dockerfile -t cimg/ruby:3.1.2-node  -t cimg/ruby:3.1-node .
docker build --file 3.1/browsers/Dockerfile -t cimg/ruby:3.1.2-browsers  -t cimg/ruby:3.1-browsers .
