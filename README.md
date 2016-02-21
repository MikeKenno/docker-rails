# Docker-Rails

Quick start rails development project in a docker container with a postgres database
Followed the guide [here](http://blog.codeship.com/running-rails-development-environment-docker/)

##Using the Docker container
###Getting started
Ensure you have docker installed and available and docker-compose
1. Clone the repo
2. cd into it and run: `docker-compose build` on the command line
3. Then run `docker-compose up` and navigate to docker-machine-ip:3000

###Updating gems
After adding any gems to the gem file you'll have to run `docker-compose build`

###Running tests
To run the tests run `docker-compose run app bundle exec rspec`

###DB migrations
1. To create the database run `docker-compose run app rake db:create`
2. To perform a database migration run `docker-compose run app rake db:migrate`