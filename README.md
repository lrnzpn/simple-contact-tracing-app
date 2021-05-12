# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version
```ruby 2.7.1p83```

* System dependencies

* Configuration
Start the server with ```rails s```
* Database creation and initialization
For a clean database, run the following script:
```ruby
rails db:drop
rails db:create
rails db:migrate
rails db: seed
```
Drops the current db, creates a new one and migrates all models, then populates the db with fake data.
