class Post < ApplicationRecord
  include PgSearch::Model
  self.per_page = 12
  pg_search_scope :global_search,
  against: [:year, :format ],
  associated_against: {
    flavors: [:year],
    categories: [:format]
  },
  using: {
    tsearch: {any_word: true}
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
