class UsersController < ApplicationController
  def show
    @currentuser = current_user
  end

  def dashboard
    # @user = current_user
    # @bookings = Booking.where(user_id: current_user)
    @bookings = current_user.bookings
    @vinyls = current_user.vinyls
  end
end
