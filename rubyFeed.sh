#!/usr/bin/env bash
vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi


getRubyVersion() {
  RSS_URL="https://github.com/ruby/ruby/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\_[0-9]+)*$ || $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(echo "$version" | trimmer "v" | sed -r 's/_/./g')"
      generateSearchTerms "RUBY_VERSION=" "$majorMinor/Dockerfile" "\\"
      directoryCheck "$majorMinor" "$SEARCH_TERM"
      if [[ $(eval echo $?) == 0 ]]; then
        generateVersionString "$newVersion"
      fi
    fi
  done
}

getRubyVersion

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
