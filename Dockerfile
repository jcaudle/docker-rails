FROM ruby:2.4

LABEL maintainer="joseph@josephcaudle.com"

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

COPY Gemfile* /usr/src/app-gemfiles/

ENV BUNDLE_GEMFILE /usr/src/app-gemfiles/Gemfile

WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/

CMD [ "rails", "s", "-b", "0.0.0.0" ]
