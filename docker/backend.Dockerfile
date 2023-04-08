FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
ADD backend/Gemfile /app/Gemfile
ADD backend/Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD backend /app
