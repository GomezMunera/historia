#!/bin/sh 
RANDOM=$$
git pull
bundle exec jekyll build
docker build . -t corumcorp/historia:${$RANDOM }
docker push corumcorp/historia:${$RANDOM }
sed 's/version/${$RANDOM }/g' deployment-template.yaml > deployment.yaml
microk8s kubectl apply -f deployment/deployment.yaml