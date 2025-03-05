# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Cleaning the database
puts 'Cleaning database...'
Restaurant.destroy_all

# Create the instances
puts 'Creating restaurants...'
5.times do
  Restaurant.create!(name: Faker::Kpop.girl_groups,
  address: Faker::Fantasy::Tolkien.location,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  phone_number: Faker::PhoneNumber.phone_number)
end
puts "Finished! Created #{Restaurant.count} restaurants."
