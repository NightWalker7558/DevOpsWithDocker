#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <github_repository> <docker_hub_repository>"
  exit 1
fi

github_repo=$1
dockerhub_repo=$2

git clone https://github.com/"$github_repo".git
repo_name=$(basename "$github_repo")

cd "$repo_name"

docker build . -t "$dockerhub_repo"
docker push "$dockerhub_repo"
docker rmi "$dockerhub_repo"

cd ..
rm -rf "$repo_name"

echo "Successfully built and pushed image to $dockerhub_repo"
