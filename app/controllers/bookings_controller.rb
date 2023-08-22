class BookingsController < ApplicationController
  before_action :set_vinyl, only: [:create, :new]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.vinyl_id = @vinyl.id
    @booking.user_id = current_user.id

    if @booking.save
        redirect_to dashboard_path(@current_user)
    else
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    if @booking.destroy
      redirect_to dashboard_path(@current_user)
    else
    end
  end



  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:vinyl_id])
  end

  def bookings_params
    params.require(:booking).permit(:begin_date, :end_date)
  end
end
