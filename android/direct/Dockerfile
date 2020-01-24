FROM android-studio:0.1
LABEL MAINTAINER Rich Rose <askrichardrose@gmail.com>

# Set ENV variable
ENV SANDBOX_USER developer 

# Create a user
RUN useradd -ms /bin/bash $SANDBOX_USER

WORKDIR /home/$SANDBOX_USER

USER $SANDBOX_USER

# Run the IDE
ENTRYPOINT [ "/usr/local/android-studio/bin/studio.sh" ]
