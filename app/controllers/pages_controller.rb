class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @suggested_vinyls = Vinyl.all.sample(12)
  end

  def dashboard
  end
end
