FROM ruby:3.0

RUN bundle config --global frozen 1

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock package.json minimal-mistakes-jekyll.gemspec ./

RUN bundle install

VOLUME /srv/jekyll