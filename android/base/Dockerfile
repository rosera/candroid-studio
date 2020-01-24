FROM ubuntu:bionic
LABEL maintainer Rich Rose

# Update the system and install packages
RUN apt-get update && apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ant \
    curl \
    libstdc++6 \
    libc6 \
    libncurses5 \
    libbz2-1.0 \
    libz1 \
    openjdk-8-jdk \
    unzip \
    && apt-get clean \
    && apt-get purge

# Download and install Android Studio
RUN curl 'https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz' > /tmp/android-studio.tar.gz \
    && tar -xvf "/tmp/android-studio.tar.gz" -C "/usr/local" \
    && rm "/tmp/android-studio.tar.gz"
