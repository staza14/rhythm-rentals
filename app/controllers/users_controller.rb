class UsersController < ApplicationController
  def show
    @currentuser = current_user
  end
end
