BRANCH=`git rev-parse --abbrev-ref HEAD`
echo $BRANCH
docker kill coconut-devenv-$BRANCH
docker rm coconut-dev-$BRANCH
xhost local:root
docker run --name coconut-devenv-$BRANCH -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/coconut -p 8080:6000 zafeirakopoulos/coconut:devenv-$BRANCH

