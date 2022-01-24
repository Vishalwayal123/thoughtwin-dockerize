FROM ruby:2.5.0

RUN apt-get update 
RUN apt-get install -y \
  postgresql-client nodejs build-essential

RUN apt-get install libpq-dev

# Copy project to /rails
RUN mkdir /rails
WORKDIR /rails
COPY Gemfile* ./
ENV BUNDLER_VERSION=2.1.4
RUN gem install bundler:2.1.4
RUN bundle install
COPY . .
RUN rm -f /rails/tmp/pids/server.pid
EXPOSE 3000
CMD rails server -b 0.0.0.0