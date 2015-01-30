class UsersController < ApplicationController
  def show
    @users = User.all
    @u = User.find(params[:id])
  end

  respond_to :html

  def welcome
    @articles = Article.all
    respond_with @articles
  end
end
