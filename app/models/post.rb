class Post < ApplicationRecord
  has_one_attached :front
  has_one_attached :back
  has_one_attached :vinyl1
  has_one_attached :vinyl2
  belongs_to :artist
end
