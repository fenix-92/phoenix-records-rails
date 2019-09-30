# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :email => 'admin@gmail.com', :password => 'admin1', :password_confirmation => 'admin1'
artists = Artist.create([{ name: 'Def Leppard', discogsid: '252443'}])
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
