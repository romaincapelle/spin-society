puts "Destroying all clubs..."
Club.destroy_all
puts "All clubs destroyed."

# Create a club with a name, logo, and description
puts "Creating a club called Team Brioche..."
Club.create!(name: "Team Brioche", logo: "https://dgalywyr863hv.cloudfront.net/pictures/clubs/1222436/30162056/1/large.jpg", description: "Welcome to Team Brioche! We're all about the sweet combo of French and Belgian cycling vibes mixed with a good ol' love for beer here in the breathtaking spots of Santa Barbara, California, and Napa Valley. Our crew of bike enthusiasts is all about enjoying the ride and cracking open a cold one afterward. From tackling tough climbs to cruising along the coast or indulging in some tasty French and Belgian grub, there's something for every cyclist in our laid-back club. So come join us as we pedal through the sunny roads, sharing laughs, stories, and of course, plenty of brews. Cheers to biking,")
puts "Club created with name, logo, and description."

# Use faker to generate 10 clubs Faker::Team.name
puts "Creating 25 clubs..."
25.times do
    Club.create!(name: Faker::Team.name, logo: Faker::Company.logo, description: Faker::Quote.famous_last_words)
    end
puts "25 clubs created with name, logo, and description."
