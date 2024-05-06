FROM maven:3.9.6-eclipse-temurin-17

## START install node

RUN curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh \
  && bash nodesource_setup.sh \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*  

## START install latest stable version of Chrome

# Installation code taken from https://github.com/markhobson/docker-maven-chrome/blob/main/jdk-17/Dockerfile

RUN apt-get update -qqy \
  && apt-get -qqy install gpg unzip \
  && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install google-chrome-stable \
  && rm /etc/apt/sources.list.d/google-chrome.list \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
  && sed -i 's/"$HERE\/chrome"/"$HERE\/chrome" --no-sandbox/g' /opt/google/chrome/google-chrome