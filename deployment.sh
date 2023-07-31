#!/bin/sh 
RANDOM=$$
git pull
bundle exec jekyll build
docker build . -t corumcorp/historia:${$RANDOM%ext}
docker push corumcorp/historia:${$RANDOM%ext}
sed 's/version/${$RANDOM%ext}/g' deployment-template.yaml > deployment.yaml
microk8s kubectl apply -f deployment/deployment.yaml