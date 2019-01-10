curl -s https://api.github.com/repos/reposense/RepoSense/releases/latest \
| grep "browser_download_url.*jar" \
| cut -d \" -f 4 \
| wget -i - -O RepoSense.jar
