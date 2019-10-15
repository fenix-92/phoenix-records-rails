# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user = User.create! :email => 'admin@admin.com', :password => 'admin1', :password_confirmation => 'admin1'

# Formats
format = Format.create([{ name: 'LP', long_name: 'Vinyl'},
                        { name: '7"', long_name: 'Single'},
                        { name: 'Cassette', long_name: 'Cassette'},
                        { name: 'Maxi', long_name: 'Maxi-Single'},
                        { name: 'CD', long_name: 'CD'},
                        { name: 'CD Single', long_name: 'CD Single'},
                        { name: '10"', long_name: 'Shellac'},
                        { name: 'Cassette Single', long_name: 'Cassette Single'}
                        ])

# Artists
defleppard = Artist.create( name: 'Def Leppard', discogsid: '252443')
defleppard.avatar.attach(io: File.open("#{Rails.root}/resources/artists/def-leppard.jpg"), filename: "def-leppard.jpg")
kiss = Artist.create( name: 'Kiss', discogsid: '153073')
kiss.avatar.attach(io: File.open("#{Rails.root}/resources/artists/kiss.jpg"), filename: "kiss.jpg")
philcollins = Artist.create( name: 'Phil Collins', discogsid: '101028')
philcollins.avatar.attach(io: File.open("#{Rails.root}/resources/artists/phil-collins.jpg"), filename: "phil-collins.jpg")
cinderella = Artist.create( name: 'Cinderella', discogsid: '196350')
cinderella.avatar.attach(io: File.open("#{Rails.root}/resources/artists/cinderella.jpg"), filename: "cinderella.jpg")
bowie = Artist.create( name: 'David Bowie', discogsid: '10263')
bowie.avatar.attach(io: File.open("#{Rails.root}/resources/artists/bowie.jpg"), filename: "bowie.jpg")
therollingstones = Artist.create( name: 'The Rolling Stones', discogsid: '20991')
therollingstones.avatar.attach(io: File.open("#{Rails.root}/resources/artists/the-rolling-stones.jpg"), filename: "the-rolling-stones.jpg")

# countries
uk = Country.create(name: 'United Kingdom', country_code: 'UK')
uk.flag.attach(io: File.open("#{Rails.root}/resources/flags/united-kingdom.png"), filename: "united-kingdom.png")
us = Country.create(name: 'United States', country_code: 'US')
us.flag.attach(io: File.open("#{Rails.root}/resources/flags/united-states-of-america.png"), filename: "united-states-of-america.png")
spain = Country.create(name: 'Spain', country_code: 'SP')
spain.flag.attach(io: File.open("#{Rails.root}/resources/flags/spain.png"), filename: "spain.png")
japan = Country.create(name: 'Japan', country_code: 'JP')
japan.flag.attach(io: File.open("#{Rails.root}/resources/flags/japan.png"), filename: "japan.png")
europe = Country.create(name: 'Europe', country_code: 'EU')
europe.flag.attach(io: File.open("#{Rails.root}/resources/flags/europe.png"), filename: "europe.png")

# Labels
geffen = RecordCompany.create(name: 'Geffen', long_name: 'Geffen Records')
geffen.photo.attach(io: File.open("#{Rails.root}/resources/labels/geffen.png"), filename: "geffen.png")
rca = RecordCompany.create(name: 'RCA', long_name: 'RCA Records')
rca.photo.attach(io: File.open("#{Rails.root}/resources/labels/rca.png"), filename: "rca.png")
wea = RecordCompany.create(name: 'WEA', long_name: 'WEA Records')
wea.photo.attach(io: File.open("#{Rails.root}/resources/labels/wea.png"), filename: "wea.png")

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

store = Store.create([{ name: 'Unknown'},
                      { name: 'Discogs', description: 'Discogs is a website and crowdsourced database of information about audio recordings, including commercial releases, promotional releases, and bootleg or off-label releases. The Discogs servers, currently hosted under the domain name discogs.com, are owned by Zink Media, Inc., and are located in Portland, Oregon, US.', online: '1'}
                      ])
