FROM android-studio:0.1
LABEL MAINTAINER Rich Rose <askrichardrose@gmail.com>

# Base packages
RUN apt-get update \
    && apt-get install -y curl gpg 

# Install XPRA - https://winswitch.org/downloads/debian-repository.html?dist_select=bionic
RUN curl https://winswitch.org/gpg.asc | apt-key add - && \
  echo "deb http://winswitch.org/ bionic main" > /etc/apt/sources.list.d/xpra.list \
#  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common \
  && add-apt-repository universe \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y xpra xvfb xterm python3-cairo python-pyinotify
 
# Add script for Android Studio
ADD ascode.sh /usr/local/bin/ascode.sh
RUN chmod +x /usr/local/bin/ascode.sh

# DISPLAY
ENV DISPLAY=:100

# Add a Data volume
VOLUME /data

# Container Port
EXPOSE 8081

# CMD to execute
CMD xpra start --bind-tcp=0.0.0.0:8081 --html=on --exit-with-children --daemon=no --xvfb="/usr/bin/Xvfb +extension  Composite -screen 0 1920x1080x16+24 -nolisten tcp -noreset" --pulseaudio=no --notifications=no --bell=no --microphone=no --bandwidth-limit=10M --desktop-scaling=off --video-scaling=off --opengl=yes --dpi=96 --swap-keys=no --encoding=rgb --env "LC_ALL=en_US.UTF-8" --start-env="LC_ALL=en_US.UTF-8" --start-child=ascode.sh
