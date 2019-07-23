# `cimg/ruby` [![CircleCI Build Status](https://circleci.com/gh/CircleCI-Public/cimg-ruby.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/CircleCI-Public/cimg-ruby) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/CircleCI-Public/cimg-ruby/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/images)

Prototype CircleCI images for Ruby, extending CircleCI's [prototype `cimg/base` image](https://github.com/CircleCI-Public/cimg-base).

## Purpose

Stub text.

## Variants

Currently, there is only a Node variant of this image. The Node variant includes the latest LTS version of Node, [installed via the `n` Node version manager](https://github.com/tj/n). To use a different Node version, see [Installing/Activating Node Versions](https://github.com/tj/n#installingactivating-node-versions), or use [CircleCI's Node orb](http://circleci.com/orbs/registry/orb/circleci/node#commands-install-node) to manually install a different version of Node. See below for explanation of specific `-node` (and other) tags.

To create the functionality of a `-browsers` variant, use [CircleCI's `browser-tools` orb](http://github.com/circleci-public/browser-tools-orb/) to install browsers at runtime.

## Tags

### `<ruby-version>-<year>.<month>`, `<ruby-version>-<year>.<month>-node`
Mostly immutable (except in the case of CVEs or severe bugs) monthly release tags for this image and its Node variant. Any new or removed tools from the base image in the last month will be reflected in this image release. For example, the `2.4.6-2019.04`/`2.4.6-2019.04-node` tags would include any changes to this repo/image that occurred in March 2019. Monthly releases are built on the 3rd of every month.

### `<ruby-version>-stable`, `<ruby-version>-stable-node`
Mutable tags representing the most recent monthly release of this image and its Node variant. For example, if today's date was April 15th, 2019, then the `2.4.6-stable`/`2.4.6-stable-node` tags would be aliases for the `2.4.6-2019.04`/`2.4.6-2019.04-node` tags.

### `<ruby-version>-edge`, `<ruby-version>-edge-node`
Mutable tags representing the builds of this image and its Node variant following the most recent successful commit to this repository's `master` branch.

### `latest`
Mutable tag that represents the latest non-Node-variant, vanilla `cimg/ruby` image of any version, functionally duplicating whichever is the most recent Ruby version pushed to either the `edge` or `stable` tags. Anyone calling the `cimg/ruby` image without specifying a tag will get this version of the image.

## Resources

Stub text.

## Development

Working on CircleCI Docker images.

### Adding new Ruby versions
To add a new version of Ruby, add it to the [`versions` array in the `manifests` file](https://github.com/CircleCI-Public/cimg-ruby/blob/master/manifest#L6), as well as to the [`version` pipeline parameter `enum` at the top of the `config.yml` file](https://github.com/CircleCI-Public/cimg-ruby/blob/master/.circleci/config.yml#L38).

### Commits to non-master branches
Upon successful commits to non-master branches of this repository, Ruby versions of this image and its Node variant will be pushed to `ccitest/ruby` for any requisite post-deployment testing. Tags there will represent the branch and commit hash that triggered them. For example, a successful commit to a branch of this repository called `dev` would result in the creation of the following image/tag: `ccitest/ruby:<ruby-version>-dev-${CIRCLE_SHA1:0:7}"`, where `${CIRCLE_SHA1:0:7}"` represents the first six characters of that particular commit hash.

### Patching bugs and vulnerabilities
Monthly release tags can be manually re-published to patch vulnerabilities or severe bugs via a pushing a `git` tag that contains the string `monthly`. This tag will trigger a workflow that will rebuild all current `<ruby-version>-<year>.<month>` and `<ruby-version>-<year>.<month>-node` tags, as well as the `<ruby-version>-stable`, `<ruby-version>-stable-node`, and `latest` alias tags.

### Contributing
We welcome [issues](https://github.com/CircleCI-Public/cimg-ruby/issues) to and [pull requests](https://github.com/CircleCI-Public/cimg-ruby/pulls) against this repository!

This image is maintained by the Community & Partner Engineering Team.
