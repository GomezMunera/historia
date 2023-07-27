bundle exec jekyll build
docker build . -t corumcorp/historia:latest
docker run -p 8081:80 corumcorp/historia:latest