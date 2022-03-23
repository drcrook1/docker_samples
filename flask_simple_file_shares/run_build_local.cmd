docker stop filesharesimple
docker rm filesharesimple

docker build -t filesharesimple .
docker run --name filesharesimple -p 80:80 filesharesimple