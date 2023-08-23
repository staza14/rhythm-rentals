class BookingsController < ApplicationController
  before_action :set_vinyl, only: [:create, :new]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.vinyl_id = @vinyl.id
    @booking.user = current_user
    @booking.save

    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])

    if @booking.destroy
      redirect_to dashboard_path
    else
    end
  end

  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:vinyl_id])
  end

  def bookings_params
    params.require(:booking).permit(:begin_date, :end_date, :vinyl_id, :user_id)
  end
end
