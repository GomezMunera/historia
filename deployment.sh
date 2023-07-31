#!/bin/sh 
RANDOM=$$
version=$RANDOM
git pull
sed  "s/version/${version}/g" deployment/deployment-template.yaml > deployment/deployment.yaml
bundle exec jekyll build
docker build . -t corumcorp/historia:${version}
docker push corumcorp/historia:${version}
microk8s kubectl apply -f deployment/deployment.yaml