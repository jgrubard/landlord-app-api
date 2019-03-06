Landlord Application Management - Ruby on Rails API
----

####[Deployed React App](https://landlord-app-jg.herokuapp.com)
####[Ruby on Rails API](https://landlord-app-ruby-api.herokuapp.com/v1/tenant_applications)

* Ruby 2.6.0
* Rails 5.2.2

To copy the API repository to your local machine, please run the 
 following command:

    git clone https://github.com/jgrubard/landlord-app-api

Then once you have navigated into the directory via command line, to grab the necessary gems, please run:

    bundle install

To start up the server, type the following command.

    rails server

The server should be running on `port 3000`.

Data is routed from a `PostgreSQL` database to an exposed API as JSON Data. You will need `psql` and a database named `landlord_app_development` to be running.