# Rails Docker
### This repository can be used as template

Start point for rails development with easy heroku and docker configuration

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

### Heroku Version
                 Redis Server
                 Rails 5.2
                 Ruby 2.7.4
                 Heroku-cli

## * Configuration

### Local Puma Server
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

Enjoy your development on localhost:3000

### Docker Configurantion
#### sidekiq login can be configured in docker-compose.yml and .env

1) Run in terminal

                docker-compose build

2) Run in terminal

                docker-compose run web rake db:setup

3) Run the application

                docker-compose up
Enjoy your development on localhost:3000
### Heroku Configration

1) Install heroku add-on dependencies

                Heroku Postgres
                Heroku Redis

2) Select your git project with this archives in your deploy configuration in heroku dashboard

3) Add to heroku cofig vars

                SIDEKIQ_USERNAME: SET SIDEKIQ WEBVIEW USER
                SIDEKIQ_PASSWORD: SET SIDEKIQ WEBVIEW PASSWORD

4) Run in terminal with heroku-cli

                heroku ps:scale web=1 -a YOUR-HEROKU-APP-NAME
                heroku ps:scale worker+1 -a YOUR-HEROKU-APP-NAME
     
5) Monitor your appplication in terminal

                heroku logs --tail -a

Enjoy your application on production mode