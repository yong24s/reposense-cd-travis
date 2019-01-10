#!/bin/bash

# Use github api to get download link of the latest release
URL=$(curl -s https://api.github.com/repos/reposense/RepoSense/releases/latest \
| grep "browser_download_url.*jar" \
| cut -d \" -f 4)

# If URL does not contain the file, the api request may be rate controlled
# So fallback and use existing jar file
if [[ $URL == *"RepoSense.jar"* ]]; then
  wget $URL -O "RepoSense.jar"
fi
