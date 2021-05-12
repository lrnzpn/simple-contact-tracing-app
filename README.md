# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version <br>
```ruby 2.7.1p83```

* Configuration <br>
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

---

# Example outputs
### Mall Admin Home
![admin home](https://user-images.githubusercontent.com/33482652/117941395-9f7b4e00-b33c-11eb-93c0-5ea1df4bb9ed.png)

### Mall Admin Search
![admin searched email](https://user-images.githubusercontent.com/33482652/117941450-ac983d00-b33c-11eb-8137-6e405bc72d07.png)

### Mall Admin selects a customer
![admin selected customer and customers nearby](https://user-images.githubusercontent.com/33482652/117941493-b91c9580-b33c-11eb-9d8d-710e64708f5d.png)

### Sample Store
![store customer count](https://user-images.githubusercontent.com/33482652/117941524-c2a5fd80-b33c-11eb-9fff-8fb4b2d22a91.png)

### Sample Store's tracker form
![store new customer](https://user-images.githubusercontent.com/33482652/117941544-cb96cf00-b33c-11eb-95bd-b588cbdd88d4.png)

---

TODO/To improve on:
- Search function
- Sort datetime
- Better UI design + own classes instead of relying on frontend framework
- Better model structure for customer and store
- Use of gems for efficiency
