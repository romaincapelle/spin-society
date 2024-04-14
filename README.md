# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - 2.6.3

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Rails DB tasks
rails db:drop - Drop the database (lose all your data!)
rails db:create - Create the database with an empty schema
rails db:migrate - Run pending migrations on the database schema
rails db:rollback - Revert the last migration
rails db:reset - Drop database + create tables found in schema.rb

rails db:reset db:migrate db:seed - Drop database + create tables found in schema.rb + run seed.rb
