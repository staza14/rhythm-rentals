class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

def index
  if params[:query].present?
    @vinyls = Vinyl.search_by_album_title_and_artists_and_songs(params[:query])
  else
    @vinyls = Vinyl.all
  end
end

def show
  @vinyl = Vinyl.find(params[:id])
  @booking = Booking.new

  @vinyls = Vinyl.where(id: params[:id])
  # The `geocoded` scope filters only vinyl with coordinates
  @markers = @vinyls.geocoded.map do |vinyl|
    {
      lat: vinyl.latitude,
      lng: vinyl.longitude,
      marker_html: render_to_string(partial: "marker")
    }
    end
# raise
end

def new
  @vinyl = Vinyl.new
end

def create
  @vinyl = Vinyl.new(vinyls_params)
  @vinyl.user = current_user
  if @vinyl.save
    redirect_to vinyl_path(@vinyl)
  else
    render :new, status: :unprocessable_entity
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

# For destroy a vinyl
def destroy
    @vinyl = Vinyl.find(params[:id])
    # @vinyl.user = current_user
    if @vinyl.destroy
      redirect_to dashboard_path
    else
      redirect_to
    end
end

def pop
  @vinyls = Vinyl.where(genre: "Pop")
end

def classical
  @vinyls = Vinyl.where(genre: "Classical")
end

def jazz
  @vinyls = Vinyl.where(genre: "Jazz")
end

def rock
  @vinyls = Vinyl.where(genre: "Rock")
end

def afrobeat
  @vinyls = Vinyl.where(genre: "Afrobeat")
end

def reggae
  @vinyls = Vinyl.where(genre: "Reggae")
end

def hiphop
  @vinyls = Vinyl.where(genre: "Hiphop")
end

def country
  @vinyls = Vinyl.where(genre: "Country")
end

def metal
  @vinyls = Vinyl.where(genre: "Metal")
end

def electronic
  @vinyls = Vinyl.where(genre: "Electronic")
end


  private

  def vinyls_params
    params.require(:vinyl).permit(:album_title, :cover_image, :release_year, :genre, :songs, :artist, :pickup_adress, :price)
  end
end
