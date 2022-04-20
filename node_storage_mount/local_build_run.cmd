docker stop nodestorage
docker rm nodestorage
docker build -t nodestorage .
docker run -p 80:3000 nodestorage