#
# Deployment container for php/vuejs project
#
FROM node:buster

ENV DEBIAN_FRONTEND=noninteractive

# Update

# We need php for deployer
RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install lsb-release apt-transport-https ca-certificates 
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" >  /etc/apt/sources.list.d/php.list

RUN apt-get update

# php, curl and rsync are needed by deployer.

RUN apt-get -y install nano curl php7.4 php-curl rsync

# Install Yarn
RUN yarn install

# Install deployer 
# -- I don't need this because there is a script in the bin directory (deployer-installer)
# RUN curl -LO https://deployer.org/deployer.phar
# RUN mv deployer.phar /usr/local/sbin/dep
# RUN chmod +x /usr/local/sbin/dep

EXPOSE 8000
