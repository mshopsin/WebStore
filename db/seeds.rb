# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create([
  {name: 'oolong Tea',
    price: 5,
    weight: 300,
    description: 'really bad from the Oolong mountain range'},
    {name: 'green Tea',
      price: 15,
      weight: 300,
      description: 'really bad from the ghonzou'},
      {name: 'black Tea',
        price: 200,
        weight: 300,
        description: 'overpriced from east of LA'}
])