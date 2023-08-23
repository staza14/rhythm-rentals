class Vinyl < ApplicationRecord

  belongs_to :user
  #has_one_attached :cover_image
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :album_title, presence: true
  # validates :cover_image, presence: true
  # validates :release_year, presence: true
  validates :genre, presence: true
  validates :songs, presence: true
end
