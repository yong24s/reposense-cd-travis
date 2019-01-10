curl -s https://api.github.com/repos/reposense/RepoSense/releases/latest \
| grep "browser_download_url.*jar" \
| cut -d \" -f 4 \
| wget -qi -

if [[ $? -ne 0 ]]; then
    echo "Unable to download RepoSense."
    exit 1; 
fi
