class UsersController < ApplicationController
  def show
    @currentuser = current_user
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
  end
end
