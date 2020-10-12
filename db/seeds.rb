# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"
# require "json"
# fetch and decode JSON resources from the Star Wars API
# def swapi_fetch(url)
#   JSON.parse(open(url).read)
# end

# Build the 'person by id' people endpoint URL
# def person_url(id)
#   "https://swapi.dev/api/people/#{id}/"
# end

# character_ids = 1..200
# character_ids.each do |character_id|
#   person = swapi_fetch(person_url(character_id))
#   puts "person name: #{person['name']}"
# end
require "csv"
PersonFilm.destroy_all
FilmPlanet.destroy_all
Person.destroy_all

Species.destroy_all
Planet.destroy_all
Film.destroy_all
# geting full path of the csv file, root is where the project is
filename_planets = Rails.root.join("db/planets.csv")
filename_species = Rails.root.join("db/species.csv")
filename_people = Rails.root.join("db/people.csv")
csv_planet_data = File.read(filename_planets)
starwar_planets = CSV.parse(csv_planet_data, headers: true, encoding: "utf-8")
csv_species_data = File.read(filename_species)
starwar_species = CSV.parse(csv_species_data, headers: true, encoding: "utf-8")
csv_people_data = File.read(filename_people)
starwar_characters = CSV.parse(csv_people_data, headers: true, encoding: "utf-8")

# puts "loding people #{filename}"

starwar_planets.each do |planet|
  s_planet = Planet.create(name:       planet["name"],
                           gravity:    planet["gravity"],
                           population: planet["population"])
end

starwar_species.each do |specie|
  s_specie = Species.create(name:           specie["name"],
                            classification: specie["classification"],
                            language:       specie["language"])
end

plantes_have_species = Planet.all.sample(10)
plantes_have_species.each do |planet|
  species = Species.all.sample(5)
  species.each do |specie|
    Person.create(name:       Faker::Movies::StarWars.unique.character,
                  birth_year: Faker::Date.birthday(min_age: 16, max_age: 210),
                  gender:     Faker::Gender.binary_type,
                  species:    specie,
                  planet:     planet)
  end
end

puts "Created #{Planet.count} planets and #{Species.count} speciesa and Created People #{Person.count}"
