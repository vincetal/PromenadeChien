# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JoinTableStrollDog.destroy_all
Stroll.destroy_all
Dog.destroy_all
DogSitter.destroy_all
City.destroy_all

require 'faker'

#Nombre d'entrées de test
number_of_entries = 10


number_of_entries.times do
  c = City.create(name: Faker::Address.city)
  d = Dog.create(name: Faker::Creature::Dog.name, city_id: c.id)
  ds = DogSitter.create(name: Faker::Name.first_name, city_id: c.id)
  s = Stroll.create(dog_sitter_id: ds.id, city_id: c.id)
end

#Sélectionner des ids de dogs et de stroll aléatoire
number_of_entries.times do
  s = Stroll.find(rand(Stroll.first.id..Stroll.last.id))
  d = Dog.find(rand(Dog.first.id..Dog.last.id))
  JoinTableStrollDog.create(stroll_id:  s.id, dog_id: d.id)
end
