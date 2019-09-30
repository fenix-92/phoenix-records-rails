# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user = User.create! :email => 'admin@gmail.com', :password => 'admin1', :password_confirmation => 'admin1'

# Artists
defleppard = Artist.create( name: 'Def Leppard', discogsid: '252443')
defleppard.avatar.attach(io: File.open("#{Rails.root}/resources/artists/defleppard.jpg"), filename: "defleppard.jpg")
kiss = Artist.create( name: 'Kiss', discogsid: '153073')
kiss.avatar.attach(io: File.open("#{Rails.root}/resources/artists/kiss.jpg"), filename: "kiss.jpg")

# countries
uk = Country.create(name: 'United Kingdom', country_code: 'UK')
uk.flag.attach(io: File.open("#{Rails.root}/resources/flags/united-kingdom.png"), filename: "united-kingdom.png")
us = Country.create(name: 'United States', country_code: 'US')
us.flag.attach(io: File.open("#{Rails.root}/resources/flags/united-states-of-america.png"), filename: "united-states-of-america.png")
spain = Country.create(name: 'Spain', country_code: 'SP')
spain.flag.attach(io: File.open("#{Rails.root}/resources/flags/spain.png"), filename: "spain.png")
japan = Country.create(name: 'Japan', country_code: 'JP')
japan.flag.attach(io: File.open("#{Rails.root}/resources/flags/japan.png"), filename: "japan.png")

# Gradings
media = MediaGrading.create([{ name: '-', text: 'Not present'},
                              { name: 'F', text: 'Fair'},
                              { name: 'P', text: 'Poor'},
                              { name: 'G', text: 'Good'},
                              { name: 'G+', text: 'Good Plus'},
                              { name: 'VG', text: 'Very Good'},
                              { name: 'VG+', text: 'Very Good Plus'},
                              { name: 'NM', text: 'Near Mint'},
                              { name: 'M', text: 'Mint'}
                              ])
sleeve = SleeveGrading.create([{ name: '-', text: 'Not present'},
                              { name: 'F', text: 'Fair'},
                              { name: 'P', text: 'Poor'},
                              { name: 'G', text: 'Good'},
                              { name: 'G+', text: 'Good Plus'},
                              { name: 'VG', text: 'Very Good'},
                              { name: 'VG+', text: 'Very Good Plus'},
                              { name: 'NM', text: 'Near Mint'},
                              { name: 'M', text: 'Mint'},
                              { name: 'S', text: 'Sealed'}
                              ])
