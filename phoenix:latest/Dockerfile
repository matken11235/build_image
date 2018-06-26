#
# Base environment
#

FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y -qq \
      apt-utils \
      locales \
      openssl \
      libssl-dev \
      curl \
      git \
      whiptail \
      inotify-tools

# Locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Node.js
RUN apt-get install -y -qq nodejs npm \
 && npm cache clean \
 && npm install -g n \
 && apt-get purge -y -qq nodejs npm \
 && n -q lts \
 && ln -sf /usr/local/bin/node /usr/bin/node \
 && ln -sf /usr/local/bin/npm /usr/bin/npm

# Erlang & Elixir
RUN apt-get install -y curl wget git make sudo \
    # download and install Erlang apt repo package
    && wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb \
    && apt-get update \
    && rm erlang-solutions_1.0_all.deb \
    # For some reason, installing Elixir tries to remove this file
    # and if it doesn't exist, Elixir won't install. So, we create it.
    # Thanks Daniel Berkompas for this tip.
    # http://blog.danielberkompas.com
    && touch /etc/init.d/couchdb \
    # install latest elixir package
    && apt-get install -y elixir erlang-dev erlang-dialyzer erlang-parsetools erlang-xmerl \
    # clean up after ourselves
    && apt-get clean
#RUN apt-get install -y -qq libwxbase2.8-0 libwxbase3.0-0 libwxbase3.0-0v5 libwxgtk2.8-0 libwxgtk3.0-0 libwxgtk3.0-0v5 libsctp1 \
# && curl -fsSL https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_21.0-1~ubuntu~xenial_amd64.deb -o /tmp/erlang.deb \
# && dpkg -i /tmp/erlang.deb \
# && rm -rf /tmp/erlang.deb \
# && curl -fsSL https://packages.erlang-solutions.com/erlang/elixir/FLAVOUR_2_download/elixir_1.6.6-1~ubuntu~xenial_amd64.deb -o /tmp/elixir.deb \
# && dpkg -i /tmp/elixir.deb \
# && rm -rf /tmp/elixir.deb

# Elm-Lang
RUN npm i -g elm --unsafe-perm=true --allow-root

# Phoenix framework
RUN mix local.hex --force \
 && mix local.rebar --force \
 && mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.2.ez --force

# Clean
RUN apt-get clean \
 && rm -rf /var/lib/apt/lists/*

