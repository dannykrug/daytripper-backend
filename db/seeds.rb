# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Place.destroy_all

Place.create(name: 'Shake Shack', address: 'Madison Square Park', description: 'A burger place that is definitely overpriced and somewhat overrated.')
Place.create(name: 'Supreme', address: 'Just find the giant line on Lafayette', description: 'hypebeast apparel, comfortable but overpriced and hard to attain.')
Place.create(name: 'Uniqlo', address: 'Atlantic Terminal', description: 'Legitimately the best clothing available for the price. Also features well designed and affordable artist collab apparel.')
Place.create(name: 'Madison Square Garden', address: '34th St', description: 'World famous sports and entertainment arena. Billy Joel plays here a lot and the owner books his own dad band to open for the Eagles on the regular.')
Place.create(name: 'MoMA Design Store', address: 'around the corner from Supreme', description: 'Filled with cool design and art pieces for the home. WARNING: Your girlfriend does not want to go here')
Place.create(name: 'Rough Trade', address: 'Wythe and N 11th, Brooklyn', description: 'Easily the largest record shop in the city. Doubles as a small music venue that regularly hosts underplays from larger artists.')
Place.create(name: 'Alamo Drafthouse', address: 'Albee Square, Brooklyn', description: 'Dine-in movie theatre hosting screenings of both Hollywood blockbusters as well as art films. Extremely strict no talking, no texting policy for optimum movie going experience.')


User.create(username: 'dannykrug', email: 'dannykrug@gmail.com')
