# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Mall admin
Store.create(:name => "Mall Admin", 
    :email => "mall@admin.com",
    :password => "p4ssw0rd!",
    :password_confirmation => "p4ssw0rd!",
    :created_at => Time.now,
    :updated_at => Time.now,
    :role => 1)