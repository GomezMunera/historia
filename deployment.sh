git pull
bundle exec jekyll build
docker build . -t corumcorp/historia:latest
docker push corumcorp/historia:latest
microk8s kubectl delete -f deployment/deployment.yaml
microk8s kubectl apply -f deployment/deployment.yaml