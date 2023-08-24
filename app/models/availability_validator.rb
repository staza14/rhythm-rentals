class AvailabilityValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    bookings = Booking.where(["vinyl_id =?", record.vinyl_id])
    date_ranges = bookings.map { |b| b.begin_date..b.end_date }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
