# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :email => 'admin@gmail.com', :password => 'admin1', :password_confirmation => 'admin1'
artists = Artist.create([{ name: 'Def Leppard', discogsid: '252443'},
                              { name: 'Kiss', discogsid: '153073'},
                              { name: 'Pink Floyd', discogsid: '45467'},
                              { name: 'Phil Collins', discogsid: '101028'}
                              ])
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
countries = Country.create([{ name: 'United Kingdom', country_code: 'UK'},
                              { name: 'United States', country_code: 'US'},
                              { name: 'Spain', country_code: 'SP'},
                              { name: 'Europe', country_code: 'EU'},
                              { name: 'Mexico', country_code: 'MX'},
                              { name: 'Canada', country_code: 'CA'},
                              { name: 'Bolivia', country_code: 'BO'},
                              { name: 'Japan', country_code: 'JP'},
                              { name: 'Portugal', country_code: 'PT'}
                              ])
