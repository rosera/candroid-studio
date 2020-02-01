FROM gcr.io/qwiklabs-resources/flutter_base:0.1
LABEL MAINTAINER Rich Rose 

# ENV variable
ENV FLUTTER_SDK https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz
ENV LOCAL_USER developer
ENV PATH="$PATH:/home/$LOCAL_USER/flutter/bin"

RUN groupadd -r $LOCAL_USER && useradd -r -g $LOCAL_USER -G audio,video $LOCAL_USER \
    && mkdir -p /home/$LOCAL_USER/Downloads \
    && chown -R $LOCAL_USER:$LOCAL_USER /home/$LOCAL_USER

# Set a work directory
WORKDIR /home/$LOCAL_USER

# Download Flutter SDK
RUN curl $FLUTTER_SDK > /home/$LOCAL_USER/flutter_linux.tar.xz \
    && tar xf /home/$LOCAL_USER/flutter_linux.tar.xz \
    && rm /home/$LOCAL_USER/flutter_linux.tar.xz \
    && flutter precache

USER $LOCAL_USER

# Run the IDE
#ENTRYPOINT [ "/usr/local/android-studio/bin/studio.sh" ]
