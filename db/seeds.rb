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
iso_records = RecordCompany.create(name: 'ISO', long_name: 'ISO Records')

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
discogs = Store.create( name: 'Discogs', description: 'Discogs is a website and crowdsourced database of information about audio recordings, including commercial releases, promotional releases, and bootleg or off-label releases. The Discogs servers, currently hosted under the domain name discogs.com, are owned by Zink Media, Inc., and are located in Portland, Oregon, US.', online: '1')
sevilla_record = Store.create(name: 'Record Sevilla', address: 'Amor de Dios, 17, 41002 Sevilla', online: 0)


no_plan = Post.create( title: 'No Plan', artist_id: bowie.id, year: '2016', country_id: europe.id, format_id: lp.id, store_id: sevilla_record.id, media_grading_id: media_near_mint.id, sleeve_grading_id: sleeve_near_mint.id, record_company_id: iso_records.id, discogsid: '10150675', serial_no: '88985419651', inshrink: 1, buyed_at: DateTime.parse("12/11/2017 11:58") )
no_plan.front.attach(io: File.open("#{Rails.root}/resources/records/david_bowie_-_no_plan/front.jpg"), filename: "front.jpg")
no_plan.back.attach(io: File.open("#{Rails.root}/resources/records/david_bowie_-_no_plan/back.jpg"), filename: "back.jpg")
