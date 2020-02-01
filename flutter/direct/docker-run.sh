docker run -d --name flutter-studio --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /usr/lib:/usr/lib gcr.io/qwiklabs-resources/flutter_direct:0.1
