class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :delete_all

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode

  include PgSearch::Model

  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }



end
