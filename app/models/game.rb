class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :delete_all

  has_one_attached :photo

end
