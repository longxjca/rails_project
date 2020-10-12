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



