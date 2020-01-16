docker run -d --name android-studio --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /usr/lib:/usr/lib android-studio-bionic:0.1
