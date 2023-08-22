class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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
    redirect_to vinyl_path
  end
end

# For estroy a vinyl
def destroy
    @vinyl = Vinyl.find(params[:id])
    @vinyl.user = User.first
    if @vinyl.destroy
      redirect_to vinyls_path(@vinyl)
    else
      redirect_to
    end
end

private

  def vinyls_params
    params.require(:vinyl).permit(:album_title, :cover_image, :release_year, :genre, :songs)
  end

end
