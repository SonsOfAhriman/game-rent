class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true


  has_many :games, :dependent => :delete_all
  has_many :bookings, :dependent => :delete_all

  has_one_attached :photo
end
