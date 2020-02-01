FROM ubuntu:bionic
LABEL maintainer Rich Rose

# Update the system and install packages
RUN apt-get update \
    && apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ant \
#    bash \
    curl \
    git \
    libc6 \
#    libglu1-mesa \
    libncurses5 \
    libstdc++6 \
    libz1 \
    libbz2-1.0 \
    openjdk-8-jdk \
    unzip \
    wget \
    xz-utils \
    && apt-get clean \
    && apt-get purge

#ENV PLATFORM_TOOLS https://dl.google.com/android/repository/platform-tools-latest-linux.zip
#ENV SDK_TOOLS  https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

#ENV FLUTTER_SDK https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz
ENV ANDROID_STUDIO https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz
#ENV FLUTTER_DEV developer 
ENV PATH="$PATH:/home/$FLUTTER_DEV/flutter/bin"


# Download Flutter SDK
# RUN curl $FLUTTER_SDK > /home/$FLUTTER_DEV/flutter_linux.tar.xz \
#    && tar xf /home/$FLUTTER_DEV/flutter_linux.tar.xz \
#    && rm /home/$FLUTTER_DEV/flutter_linux.tar.xz \
#    && flutter precache

# Download and install Android Studio
RUN curl $ANDROID_STUDIO > /tmp/android-studio.tar.gz \
    && tar -xvf "/tmp/android-studio.tar.gz" -C "/usr/local" \
    && rm /tmp/android-studio.tar.gz

# Download Platform Tools
# RUN wget $PLATFORM_TOOLS -O /tmp/platform-tools-latest-linux.zip \
#    && unzip "/tmp/platform-tools-latest-linux.zip" -d "/usr/local/android-studio" \
#    && rm /tmp/platform-tools-latest-linux.zip

# Download SDK Tools
# RUN wget $SDK_TOOLS -O /tmp/sdk-tools.zip \
#    && unzip "/tmp/sdk-tools.zip" -d "/usr/local/android-studio" \
#    && rm /tmp/sdk-tools.zip

# Create a user
#RUN useradd -ms /bin/bash $FLUTTER_DEV

#WORKDIR /home/$FLUTTER_DEV

