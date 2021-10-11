# syntax=docker/dockerfile:1
FROM ruby:2.7.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /rails-docker
COPY Gemfile /rails-docker/Gemfile
COPY Gemfile.lock /rails-docker/Gemfile.lock
COPY Rakefile /rails-docker/Rakefile
COPY config/ /rails-docker/config
RUN bundle install


# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
EXPOSE 5432

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]