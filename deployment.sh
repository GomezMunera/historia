#!/bin/sh 
RANDOM=$$
version=$RANDOM
git pull
bundle exec jekyll build
docker build . -t corumcorp/historia:${version}
docker push corumcorp/historia:${version}
replacement = 's/version/${version}/g'
sed  $replacement deployment/deployment-template.yaml > deployment/deployment.yaml
microk8s kubectl apply -f deployment/deployment.yaml