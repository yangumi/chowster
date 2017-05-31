# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# delete all places - clears db
Place.destroy_all
#delete all comments - clears db
Comment.destroy_all


# Create 50 places, with set user id of 1, and set address, and faker blah ; ! means to throw an exception if 
# validation fails from place model

50.times do
  Place.create!(user_id: 1, name: Faker::Company.name, address: '345 Spear St, San Francisco, CA 94119', description: Faker::Company.bs )
end

# give an array of place instances in db
places = Place.all

# take the input and convert to string
ratings = %w(1_star, 2_stars, 3_stars, 4_stars, 5_stars)

# for each place - set user_id 1, create between 2 and 5 comments, random faker pkmn loc, random ratings 1-5
# create! means to throw an exception if validation fails from the comment model
places.each do | place |
  (2..5).to_a.sample.times do
    Comment.create!(user_id: 1, message: Faker::Pokemon.location, rating: ratings.sample, place_id: place.id)
  end
end