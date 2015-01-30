class ArticlesController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html

  def index
    @articles = Article.all
    respond_with @articles
  end
end
