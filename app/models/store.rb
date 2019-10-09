class Store < ApplicationRecord
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
