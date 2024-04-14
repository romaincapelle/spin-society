# Use faker to generate 10 clubs Faker::Team.name
puts "Creating 25 clubs..."
25.times do
    Club.create!(name: Faker::Team.name, logo: Faker::Company.logo)
    end
puts "25 clubs created!"
