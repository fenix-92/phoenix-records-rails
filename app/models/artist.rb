class Artist < ApplicationRecord
  has_one_attached :avatar
  has_many :posts
end
