puts "Destroying all users"
User.destroy_all
alex = User.new(email: "amartin.essec@gmail.com", password: "azerty", admin: true)
alex.save!
puts "User Admin Alex créé"
###########################

puts "Destroying all facilities"
Facility.destroy_all

# Seed des facilities
puts "Creating facilities"
lit = Facility.new(description: "Lits 2 places")
lit.save!

puts "first facility ok"

terrasse = Facility.new(description: "Terrasse aménagée")
terrasse.save!

tv = Facility.new(description: "Télévision")
tv.save!

nespresso = Facility.new(description: "Machine Nespresso")
nespresso.save!

vaisselle = Facility.new(description: "Vaisselle")
vaisselle.save!

cuisine = Facility.new(description: "Cuisine Equipée")
cuisine.save!

congelateur = Facility.new(description: "Congélateur")
congelateur.save!

bureau = Facility.new(description: "Bureau")
bureau.save!

lave_vaisselle = Facility.new(description: "Lave-vaisselle")
lave_vaisselle.save!

lave_linge = Facility.new(description: "Lave-linge")
lave_linge.save!

console = Facility.new(description: "Console de jeu")
console.save!

seche_linge = Facility.new(description: "Sèche-linge")
seche_linge.save!

aspirateur = Facility.new(description: "Aspirateur")
aspirateur.save!

velo = Facility.new(description: "Garage à vélos")
velo.save!

ascenseur = Facility.new(description: "Ascenseur")
ascenseur.save!

four = Facility.new(description: "Four")
four.save!

parking = Facility.new(description: "Place de parking")
parking.save!

seche_cheveux = Facility.new(description: "Sèche-cheveux")
seche_cheveux.save!

home_cinema = Facility.new(description: "Home cinema")
home_cinema.save!

playstation = Facility.new(description: "Playstation 4")
playstation.save!

dressing = Facility.new(description: "Dressing")
dressing.save!

enceinte = Facility.new(description: "Enceinte")
enceinte.save!

video_projecteur = Facility.new(description: "Vidéo-projecteur")
video_projecteur.save!

baby_foot = Facility.new(description: "Baby-foot")
baby_foot.save!

flechettes = Facility.new(description: "Fléchettes")
flechettes.save!

arcade = Facility.new(description: "Arcade")
arcade.save!

ping_pong = Facility.new(description: "Ping-pong")
ping_pong.save!

micro_ondes = Facility.new(description: "Four à micro-ondes")
micro_ondes.save!

grille_pain = Facility.new(description: "Grille pain")
grille_pain.save!

croque_monsieur = Facility.new(description: "Appareil à croque-monsieur")
croque_monsieur.save!

bouilloire = Facility.new(description: "Bouilloire")
bouilloire.save!

fer = Facility.new(description: "Fer à repasser")
fer.save!

blender = Facility.new(description: "Blender")
blender.save!
#########################

# Seed des appartements
puts "Suppression des appartements"
Flat.destroy_all
puts "Création des 2 appartements"

dagobah = Flat.new(name: "Dagobah", address: "9 Les Larris Orange", zipcode: "95300", city: "Pontoise", neighborhood: "Cergy-Préfecture", description: "Magnifique appartement comprenant 4 chambres, 2 salles de bain, une cuisine et un salon-salle à manger. Tout y est entièrement meublé et équipé (voir liste des équipements ci-dessous).", sub_description: "Appartement idéalement situé, proche de l'Essec, du centre commercial des 3 Fontaines et de la gare RER.", nb_rooms: 4, price_per_room: 590.0, occupied: false, availability_date: Date.today,)
dagobah.save!
naboo = Flat.new(name: "Naboo", address: "8 Les Larris Orange", zipcode: "95300", city: "Pontoise", neighborhood: "Cergy-Préfecture", description: "Magnifique appartement comprenant 4 chambres, 2 salles de bain, une cuisine et un salon-salle à manger. Tout y est entièrement meublé et équipé (voir liste des équipements ci-dessous).", sub_description: "Appartement idéalement situé, proche de l'Essec, du centre commercial des 3 Fontaines et de la gare RER.", nb_rooms: 4, price_per_room: 590.0, occupied: false, availability_date: Date.today,)
naboo.save!
