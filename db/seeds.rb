# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker' # https://github.com/faker-ruby/faker

# Mall admin
Store.create(:name => "Mall Admin", 
    :email => "mall@admin.com",
    :password => "p4ssw0rd!",
    :password_confirmation => "p4ssw0rd!",
    :created_at => Time.now,
    :updated_at => Time.now,
    :role => 1)

# Generate some stores
# Store 2
Store.create(:name => "Innisfree", 
    :email => "innisfree@store.com",
    :password => "password1",
    :password_confirmation => "password1",
    :created_at => Time.now,
    :updated_at => Time.now,
    :role => 0)

# Store 3
Store.create(:name => "Nature Republic", 
    :email => "nature-republic@store.com",
    :password => "password2",
    :password_confirmation => "password2",
    :created_at => Time.now,
    :updated_at => Time.now,
    :role => 0)

# some fake stores with Faker (Store 4-7)
4.times do Store.create(name: Faker::Restaurant.name, 
    email: Faker::Internet.email(name: Faker::Restaurant.name, separators: '-', domain: 'store'),
    :password => "Password123",
    :password_confirmation => "Password123",
    :created_at => Time.now,
    :updated_at => Time.now,
    :role => 0)
end

20.times do Customer.create(
    name: Faker::Name.name,
    email_address: Faker::Internet.email(name: Faker::Name.name, separators: '-'),
    mobile_number: Faker::PhoneNumber.cell_phone_in_e164,
    created_at: Faker::Time.between(from: DateTime.now - 3.hours, to: DateTime.now + 3.hours),
    updated_at: Time.now,
    store_id: Faker::Number.between(from: 2, to: 7)
) 
end

# lets have someone have multiple entries (aka me) and lets say i am positive (pls no)
3.times do 
Customer.create(name: 'Miggy Pinaroc',
    email_address: 'lmap@email.com',
    mobile_number: '+639123456789',
    created_at: Faker::Time.between(from: DateTime.now - 3.hours, to: DateTime.now + 3.hours),
    updated_at: Time.now,
    store_id: Faker::Number.between(from: 2, to: 7))
end