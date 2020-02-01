class Artist < ApplicationRecord
  mount_uploader :artistimg, ArtistimgUploader
  has_many :posts
end
