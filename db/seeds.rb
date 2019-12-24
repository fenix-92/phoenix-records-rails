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
lp = Format.create( name: 'LP', long_name: 'Vinyl')
seven_inch = Format.create( name: '7"', long_name: 'Single')
cassette = Format.create( name: 'Cassette', long_name: 'Cassette')
maxi = Format.create( name: 'Maxi', long_name: 'Maxi-Single')
cd = Format.create(name: 'CD', long_name: 'CD')
cd_single = Format.create(name: 'CD Single', long_name: 'CD Single')
ten_inch = Format.create(name: '10"', long_name: 'Shellac')
cassette_single = Format.create(name: 'Cassette Single', long_name: 'Cassette Single')


# Artists
badlands = Artist.create( name: 'Badlands', discogsid: '323881')
badlands.avatar.attach(io: File.open("#{Rails.root}/resources/artists/badlands.jpg"), filename: "badlands.jpg")
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
ledzeppelin = Artist.create( name: 'Led Zeppelin', discogsid: '34278')
ledzeppelin.avatar.attach(io: File.open("#{Rails.root}/resources/artists/ledzeppelin.jpg"), filename: "ledzeppelin.jpg")
pinkfloyd = Artist.create( name: 'Pink Floyd', discogsid: '45467')
pinkfloyd.avatar.attach(io: File.open("#{Rails.root}/resources/artists/pinkfloyd.jpg"), filename: "pinkfloyd.jpg")

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
france = Country.create(name: 'France', country_code: 'FR')
france.flag.attach(io: File.open("#{Rails.root}/resources/flags/france.png"), filename: "france.png")
belgium = Country.create(name: 'Belgium', country_code: 'BG')
belgium.flag.attach(io: File.open("#{Rails.root}/resources/flags/belgium.png"), filename: "belgium.png")
germany = Country.create(name: 'Germany', country_code: 'G')
germany.flag.attach(io: File.open("#{Rails.root}/resources/flags/germany.png"), filename: "germany.png")

# Labels
geffen = RecordCompany.create(name: 'Geffen', long_name: 'Geffen Records')
geffen.photo.attach(io: File.open("#{Rails.root}/resources/labels/geffen.png"), filename: "geffen.png")
rca = RecordCompany.create(name: 'RCA', long_name: 'RCA Records')
rca.photo.attach(io: File.open("#{Rails.root}/resources/labels/rca.png"), filename: "rca.png")
wea = RecordCompany.create(name: 'WEA', long_name: 'WEA Records')
wea.photo.attach(io: File.open("#{Rails.root}/resources/labels/wea.png"), filename: "wea.png")
iso_records = RecordCompany.create(name: 'ISO', long_name: 'ISO Records')
virgin = RecordCompany.create(name: 'Virgin', long_name: 'Virgin Records')
virgin.photo.attach(io: File.open("#{Rails.root}/resources/labels/virgin.png"), filename: "virgin.png")
atlantic = RecordCompany.create(name: 'Atlantic', long_name: 'Atlantic Records')
harvest = RecordCompany.create(name: 'Harvest', long_name: 'Harvest Records')

# Gradings
media_not_present = MediaGrading.create(name: '-', text: 'Not present')
media_fair = MediaGrading.create( name: 'F', text: 'Fair')
media_poor = MediaGrading.create( name: 'P', text: 'Poor')
media_good = MediaGrading.create( name: 'G', text: 'Good')
media_good_plus = MediaGrading.create( name: 'G+', text: 'Good Plus')
media_very_good = MediaGrading.create( name: 'VG', text: 'Very Good')
media_very_good_plus = MediaGrading.create( name: 'VG+', text: 'Very Good Plus')
media_near_mint = MediaGrading.create( name: 'NM', text: 'Near Mint')
media_mint = MediaGrading.create( name: 'M', text: 'Mint')

sleeve_generic = SleeveGrading.create( name: 'Generic', text: 'Generic')
sleeve_not_present = SleeveGrading.create( name: 'Not Present', text: 'Not Present')
sleeve_fair = SleeveGrading.create( name: 'F', text: 'Fair')
sleeve_poor = SleeveGrading.create( name: 'P', text: 'Poor')
sleeve_good = SleeveGrading.create( name: 'G', text: 'Good')
sleeve_good_plus = SleeveGrading.create( name: 'G+', text: 'Good Plus')
sleeve_very_good = SleeveGrading.create( name: 'VG', text: 'Very Good')
sleeve_very_good_plus = SleeveGrading.create( name: 'VG+', text: 'Very Good Plus')
sleeve_near_mint = SleeveGrading.create( name: 'NM', text: 'Near Mint')
sleeve_mint = SleeveGrading.create( name: 'M', text: 'Mint')
sleeve_sealed = SleeveGrading.create( name: 'S', text: 'Sealed')

no_store = Store.create(name: 'No Store', online: 0)
ebay = Store.create(name: 'eBay', online: 1)
metralleta = Store.create(name: 'La Metralleta', address: 'Calle del Postigo de San Martín, 1, 28013', online: 0)
discogs = Store.create( name: 'Discogs', description: '', online: '1')
sevilla_record = Store.create(name: 'Record Sevilla', address: 'Calle Amor de Dios, 17, 41002 Sevilla', online: 0)
todocoleccion = Store.create(name: 'Todocolección', address: '', online: 1)

no_plan = Post.create( title: 'No Plan', artist_id: bowie.id, year: '2016', country_id: europe.id, format_id: lp.id, store_id: sevilla_record.id, media_grading_id: media_near_mint.id, sleeve_grading_id: sleeve_near_mint.id, record_company_id: iso_records.id, discogsid: '10150675', serial_no: '88985419651', inshrink: 1, featured: 1, buyed_at: DateTime.parse("12/11/2017 11:58") )
no_plan.front.attach(io: File.open("#{Rails.root}/resources/records/david_bowie_-_no_plan/front.jpg"), filename: "front.jpg")
no_plan.back.attach(io: File.open("#{Rails.root}/resources/records/david_bowie_-_no_plan/back.jpg"), filename: "back.jpg")

but_seriously = Post.create( title: '...But Seriously', artist_id: philcollins.id, year: '1989', country_id: europe.id, format_id: lp.id, store_id: no_store.id, media_grading_id: media_very_good_plus.id, sleeve_grading_id: sleeve_very_good.id, record_company_id: wea.id, discogsid: '499511', serial_no: '256919 -1')
but_seriously.front.attach(io: File.open("#{Rails.root}/resources/records/phil_collins_-_but_seriously/front.png"), filename: "front.png")
but_seriously.back.attach(io: File.open("#{Rails.root}/resources/records/phil_collins_-_but_seriously/back.jpg"), filename: "back.jpg")
but_seriously.vinyl1.attach(io: File.open("#{Rails.root}/resources/records/phil_collins_-_but_seriously/vinyl1.jpg"), filename: "vinyl1.jpg")


dreams_in_the_dark = Post.create( title: 'Dreams in the dark', artist_id: badlands.id, year: '1989', country_id: us.id, format_id: seven_inch.id, store_id: discogs.id, media_grading_id: media_near_mint.id, sleeve_grading_id: sleeve_very_good_plus.id, record_company_id: atlantic.id, discogsid: '6807670', serial_no: '7-88888', notes: 'Signed by Eric Singer in 2018', featured: 1)
dreams_in_the_dark.front.attach(io: File.open("#{Rails.root}/resources/records/badlands_-_dreams_in_the_dark/front.jpg"), filename: "front.jpg")
dreams_in_the_dark.back.attach(io: File.open("#{Rails.root}/resources/records/badlands_-_dreams_in_the_dark/back.jpg"), filename: "back.jpg")

whole_lotta_love = Post.create( title: 'Whole Lotta Love', artist_id: ledzeppelin.id, year: '1969', country_id: france.id, format_id: seven_inch.id, store_id: todocoleccion.id, media_grading_id: media_very_good_plus.id, sleeve_grading_id: sleeve_very_good.id, record_company_id: atlantic.id, discogsid: '10081492', serial_no: '650.186', featured: 0)
whole_lotta_love.front.attach(io: File.open("#{Rails.root}/resources/records/led_zeppelin_-_whole_lotta_love/front.jpg"), filename: "front.jpg")
whole_lotta_love.back.attach(io: File.open("#{Rails.root}/resources/records/led_zeppelin_-_whole_lotta_love/back.jpg"), filename: "back.jpg")

wish_you_were_here = Post.create( title: 'Wish You Were Here', artist_id: pinkfloyd.id, year: '1975', country_id: spain.id, format_id: lp.id, store_id: no_store.id, media_grading_id: media_very_good_plus.id, sleeve_grading_id: sleeve_very_good_plus.id, record_company_id: harvest.id, discogsid: '10657950', serial_no: 'J066-96918', featured: 0)
wish_you_were_here.front.attach(io: File.open("#{Rails.root}/resources/records/pink_floyd_wish_you_were_here/front.png"), filename: "front.png")
