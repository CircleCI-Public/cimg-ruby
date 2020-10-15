#!/usr/bin/env bash

docker build --file 2.5/browsers/Dockerfile -t cimg/ruby:2.5.8-browsers  -t cimg/ruby:2.5-browsers .
docker build --file 2.6/browsers/Dockerfile -t cimg/ruby:2.6.6-browsers  -t cimg/ruby:2.6-browsers .
docker build --file 2.7/browsers/Dockerfile -t cimg/ruby:2.7.2-browsers  -t cimg/ruby:2.7-browsers .
