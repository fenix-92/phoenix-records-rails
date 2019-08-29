class Post < ApplicationRecord
  has_one_attached :front
  belongs_to :artist
end
