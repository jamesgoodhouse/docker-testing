FROM centurylink/alpine-rails

RUN mkdir -p /web/service
WORKDIR /web/service

COPY Gemfile /web/service/
COPY Gemfile.lock /web/service/
RUN bundle install

COPY . /web/service
