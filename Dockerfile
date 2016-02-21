FROM ruby:2.2
MAINTAINER kenno-tron@virginmedia.com

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

RUN mkdir -p /app
WORKDIR /app

COPY ./demo/Gemfile ./demo/Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY ./demo ./

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b","0.0.0.0"]