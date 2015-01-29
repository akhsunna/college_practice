class UsersController < ApplicationController
  def show
    @users = User.all
    @u = User.find(params[:id])
  end

  def welcome
    # redirect_to current_user if user_signed_in?
  end
end
