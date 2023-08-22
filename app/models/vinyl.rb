class Vinyl < ApplicationRecord
  belongs_to :user
  #has_one_attached :cover_image
  has_many :bookings
  validates :album_title, presence: true
  validates :cover_image, presence: true
  validates :release_year, presence: true
  validates :genre, presence: true
  validates :songs, presence: true
end
