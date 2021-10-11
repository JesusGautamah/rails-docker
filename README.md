# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## * Ruby version
                Ruby 2.7.4

## * System dependencies

### Docker version
                 Docker
                 Docker Compose

### Common Version
                 Redis Server
                 Rails 5.2
                 Ruby 2.7.4

## * Configuration

### Local Common Server
1) edit exports.sh with your db information

                export DB_USER="YOUR DB USER"
                export DB_PASS="YOUR DB PASSWORD"
                export DB_HOST="YOUR DB HOST"

2) Run exports.sh in puma server terminal and sidekiq terminal

                source exports.sh

3) Create your database running

                rake db:setup

4) run rails puma server

                rails s

5) run redis-server

                redis-server

6) run sidekiq 

                bundle exec sidekiq -q default

