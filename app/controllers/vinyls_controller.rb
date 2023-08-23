class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

def index
  @vinyls = Vinyl.all
end

def show
  @vinyl = Vinyl.find(params[:id])
  @booking = Booking.new
end

def new
  @vinyl = Vinyl.new
end

def create
  @vinyl = Vinyl.new(vinyls_params)
  @vinyl.user = current_user
  if @vinyl.save
    redirect_to vinyls_path
  else
    redirect_to vinyl_path
  end
end

def edit
  @vinyl = Vinyl.find(params[:id])
end

def update
  @vinyl = Vinyl.find(params[:id])
  if @vinyl.update(vinyls_params)
  redirect_to vinyls_path(@vinyl)
  else
  redirect_to
  end
end

# For estroy a vinyl
def destroy
    @vinyl = Vinyl.find(params[:id])
    # @vinyl.user = current_user
    if @vinyl.destroy
      redirect_to dashboard_path
    else
      redirect_to
    end
end

private

  def vinyls_params
    params.require(:vinyl).permit(:album_title, :cover_image, :release_year, :genre, :songs)
  end
end
