FROM 1and1internet/ubuntu-16-apache-2.4:unstable
MAINTAINER james.wilkins@fasthosts.co.uk
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
<<<<<<< HEAD
  apt-get install -y libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-gd php7.0-mysql php7.0-sqlite php7.0-xml php7.0-zip && \
  cd /tmp && \
  curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer && \
  chmod a+x /usr/local/bin/composer && \
  rm -rf /tmp/* && \
=======
  apt-get install -y libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-gd php7.0-mysql php7.0-sqlite php7.0-xml php7.0-zip php7.0-mbstring && \
>>>>>>> c3adb8fecfb67362b1890966c50eedb27ae66dce
  rm -rf /var/lib/apt/lists/*
ADD files /
EXPOSE 8080
