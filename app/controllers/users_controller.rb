class UsersController < ApplicationController
  def show
    @currentuser = current_user
  end

  def dashboard
    # @user = current_user
    # @bookings = Booking.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user.id)
    @vinyls = Vinyl.where(user_id: current_user.id)
    @suggested_vinyls = Vinyl.all.sample(4)
  end

  def vinyldashboard
    # @user = current_user
    # @bookings = Booking.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user.id)
    @vinyls = Vinyl.where(user_id: current_user.id)
    @suggested_vinyls = Vinyl.all.sample(4)
  end
end
