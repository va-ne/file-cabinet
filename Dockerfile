FROM ruby:2.2.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /cabinet
WORKDIR /cabinet
COPY Gemfile /cabinet/Gemfile
COPY Gemfile.lock /cabinet/Gemfile.lock
RUN bundle install
COPY . /cabinet