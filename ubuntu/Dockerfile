FROM ubuntu:bionic
LABEL maintainer="rich rose"

# Update the system and install packages
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ant \
    curl \
    openjdk-8-jdk \
    unzip \
    libz1 \
    libncurses5 \
    libbz2-1.0 \
    libstdc++6 \
    libbz2-1.0 \
    lib32stdc++6 \
    lib32z1 \
    && apt-get clean \
    && apt-get purge

# Download and install Android Studio
RUN curl 'https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz' > /tmp/android-studio.tar.gz \
    && tar -xvf "/tmp/android-studio.tar.gz" -C "/usr/local"
