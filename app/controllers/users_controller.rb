class UsersController < ApplicationController
  def show
    @users = User.all
    @u = User.find(params[:id])
  end

  def welcome

  end
end
