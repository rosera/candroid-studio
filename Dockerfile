# Android Studio - Docker Image
FROM gradle:4.10.0-jdk8
MAINTAINER rosera askrichardrose@gmail.com

USER root

# Set up the environment variables
ENV SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip" \
    STUDIO_URL="https://dl.google.com/dl/android/studio/ide-zips/3.4.0.18/android-studio-ide-183.5452501-linux.tar.gz" \
    ANDROID_BASE="/usr/local" \
    ANDROID_HOME="${ANDROID_BASE}/android-sdk" \
    ANDROID_VERSION=28 \
    ANDROID_BUILD_TOOLS_VERSION=27.0.3

# Download Android SDK
RUN mkdir "$ANDROID_HOME" .android \
    && cd "$ANDROID_HOME" \
    && curl -o sdk.zip $SDK_URL \
    && unzip sdk.zip \
    && rm sdk.zip \
    && mkdir "$ANDROID_HOME/licenses" || true \
    && echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" > "$ANDROID_HOME/licenses/android-sdk-license"

#    && yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses

# Install Android Build Tool and Libraries
RUN $ANDROID_HOME/tools/bin/sdkmanager --update
RUN $ANDROID_HOME/tools/bin/sdkmanager "build-tools;${ANDROID_BUILD_TOOLS_VERSION}" \
    "platforms;android-${ANDROID_VERSION}" \
    "platform-tools"

# Install Build Essentials
RUN apt-get update && apt-get install build-essential -y && apt-get install file -y && apt-get install apt-utils -y

# Install the Android Studio
RUN mkdir "${ANDROID_BASE}/android-studio" \
    && cd "${ANDROID_BASE}" \
    && curl $STUDIO_URL -o android-studio.tar.gz \
    && tar -xvf android-studio.tar.gz \
    && rm android-studio.tar.gz

# Amend the working directory to local directory
WORKDIR ${ANDROID_BASE}/android-studio/bin

# Run the IDE
ENTRYPOINT [ "./studio.sh" ]
