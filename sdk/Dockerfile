FROM cirrusci/flutter:base

ARG flutter_version

ENV FLUTTER_HOME ${HOME}/sdks/flutter
ENV FLUTTER_ROOT $FLUTTER_HOME
ENV FLUTTER_VERSION $flutter_version

RUN git clone --branch v${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

# ruby
RUN sudo apt-get install -y --allow-unauthenticated --no-install-recommends ruby-full
RUN ruby --version

# fastlane
RUN sudo gem install fastlane -NV

# doctor
RUN flutter doctor
