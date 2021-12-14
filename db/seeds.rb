# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Faker::Name.unique.clear # Clears used values for Faker::Name

# Author.delete_all
# Novel.delete_all
# Genre.delete_all
# Novelgenre.delete_all

Product.delete_all
Supplier.delete_all

15.times do

  supplier = Supplier.create(name: Faker::Artist.name, email: Faker::Internet.unique.email)

  10.times do

    product = supplier.products.create(title: Faker::Creature::Horse.name, brand: Faker::Appliance.brand,

                                         price: Faker::Number.decimal)

  end
end
