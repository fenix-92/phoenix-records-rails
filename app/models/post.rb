class Post < ApplicationRecord
  include PgSearch::Model
  self.per_page = 12
  scope :by_year, lambda { | year | where(:year => year)}
  scope :featured, -> { where(:featured => true) }
  scope :by_artist, lambda { | artist |
    joins(:artist).where(artists: { name: artist })
  }
  scope :by_country, lambda { | country |
    joins(:country).where(countries: { name: country })
  }
  scope :by_label, lambda { | label |
    joins(:record_company).where(record_companies: { name: label })
  }
  has_one_attached :front
  has_one_attached :back
  has_one_attached :vinyl1
  has_one_attached :vinyl2
  has_one_attached :audio_sample
  belongs_to :format
  belongs_to :artist
  belongs_to :media_grading
  belongs_to :sleeve_grading
  belongs_to :country
  belongs_to :record_company
  belongs_to :store
end
