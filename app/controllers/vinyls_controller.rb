class VinylsController < ApplicationController

def index
  @vinyls = Vinyl.all
end

def show
  @vinyl = Vinyl.find(params[:id])
end

private

  def vinyls_params
    params.require(:list).permit(:album_title, :cover_image, :released_year, :genre, :songs)
  end

end
