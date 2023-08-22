class VinylsController < ApplicationController

def index
  @vinyls = Vinyl.all
end

def show
  @vinyl = Vinyl.find(params[:id])
end

def new
  @vinyl = Vinyl.new
end

def create
  @vinyl = Vinyl.new(vinyls_params)
  @vinyl.user = User.first #current_user instead
  if @vinyl.save
    redirect_to vinyls_path
  else
    redirect_to new_vinyl_path
  end
end

private

  def vinyls_params
    params.require(:vinyl).permit(:album_title, :cover_image, :release_year, :genre, :songs)
  end

end
