docker run -d --name flutter-studio --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /usr/lib:/usr/lib flutter-studio:0.1 /usr/local/android-studio/bin/studio.sh
