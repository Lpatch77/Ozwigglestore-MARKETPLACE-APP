# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/products.csv"), headers: true) do |row|
  Product.find_or_create_by(product: row[0], type: row[1], maker: row[2], location: row[3], price: row[4], desciption: row[5])
end