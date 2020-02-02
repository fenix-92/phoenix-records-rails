class Artist < ApplicationRecord
  has_many :posts
  mount_uploader :artist_image, ArtistUploader
end
