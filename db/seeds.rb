puts "Cleaning database..."
Flat.destroy_all

puts "Creating Flats..."
lovely_flat_in_marseille = {name: "Lovely Flat In Marseille", address: "13004 - Marseille", description: "49m2, with a balcony", price_per_night: 70, number_of_guests: 3}
great_loft_in_lille = {name: "Great Loft In Lille", address: "59800 - Lille", description: "Loft 100m2, with a rooftop", price_per_night: 150, number_of_guests: 8}
little_flat_in_paris = {name: "Little Flat In Paris", address: "75012 - Paris", description: "Chambre de bonne, 9m2", price_per_night: 100, number_of_guests: 2}
nice_flat_in_paris = {name: "Nice Flat In Paris", address: "75011 - Paris", description: "Best Neighbourhood", price_per_night: 150, number_of_guests: 4}
big_flat_in_marseille = {name: "Big Flat In Marseille", address: "13001 - Marseille", description: "On the Vieux Port", price_per_night: 150, number_of_guests: 6}


[lovely_flat_in_marseille, great_loft_in_lille , little_flat_in_paris, nice_flat_in_paris , big_flat_in_marseille].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
