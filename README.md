# README

This README would normally document whatever steps are necessary to get the
application up and running.


test-api: A Ruby on Rails API with Token Authentication, Uses JWT and Simple Command gem
This is an application of a token based authentication on Rails. 


Things you may want to cover:

* Ruby version: 2.7

* System dependencies 

Rails 6.x

install the following
 # JWT(JSON Web Token)
 gem jwt
 # SimpleCommand for simplified way of creating services,hence shortening the code required for the models and controllers
 gem simple_command

 Kindly add them to your Gemfile and run bundle install
 
* Database initialization

  you can switch to PostgreSQL by installing the pg gem by editing the Gemfile
  
  in order to create a test user credentials(SQLite3)

  rails c  # Enters to the irb prompt
  
  #Create a test credentials
  User.Create!(email:"example@example.com", password:"password",password_confirmation:"password")

  # Create the Items 
  Item.create!(name:"name",description:"description")


  then fire the server
  rails s --daemon 


* How to run the test suite
  Try to send a POST request on http://localhost:3000/authenticate using cURL
  
  curl -H "Content-Type: application/json" -X POST -d '{"email":email,"password":password}' http://localhost:3000/authenticate

  if status = 200 = returns a auth_token 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

  Heroku deployment 
  you can add the Heroku gem for deployment of your Rails app into Heroku
