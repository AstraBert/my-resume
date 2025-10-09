FROM ruby:3.4-alpine

WORKDIR /app/
COPY ./ /app/

RUN apk add --no-cache git build-base
RUN gem install bundler -v '2.7.0'
RUN bundle install

EXPOSE 4000

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0" ]