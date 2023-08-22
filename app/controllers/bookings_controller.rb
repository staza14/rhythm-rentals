class BookingsController < ApplicationController

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bookings_params
    params.require(:booking).permit(:begin_date, :end_date, :vinyl_id, :user_id)
  end
end
