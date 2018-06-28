#
# Base environment
#

FROM elixir:1.6.6

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y -qq \
      apt-utils \
      openssl \
      libssl-dev \
      curl \
      git \
      whiptail \
      inotify-tools

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get install -y -qq nodejs gcc g++ make \
 && npm cache clean --force \
 && npm install -g n \
 && apt-get purge -y -qq nodejs npm \
 && n -q lts \
 && ln -sf /usr/local/bin/node /usr/bin/node \
 && ln -sf /usr/local/bin/npm /usr/bin/npm

# Elm-Lang
RUN npm i -g elm --unsafe-perm=true --allow-root

# Phoenix framework
RUN mix local.hex --force \
 && mix local.rebar --force \
 && mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.3.ez --force

# Clean
RUN apt-get clean \
 && rm -rf /var/lib/apt/lists/*

