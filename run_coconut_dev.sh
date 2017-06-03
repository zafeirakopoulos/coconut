docker kill coconut-devenv-$2
docker rm coconut-dev-$2
xhost local:root
docker run --name coconut-devenv-$2 -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $1:/coconut -p 8080:6000 coconut:devenv-$2

