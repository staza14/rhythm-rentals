class Booking < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user
  validates :begin_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_begin_date

  private

  def end_date_after_begin_date
    return if end_date.blank? || begin_date.blank?

    if end_date < begin_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
