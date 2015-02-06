class ArticlesController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html

  def index
    @articles = Article.all
    respond_with @articles
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path, notice: 'The article has been successfully created.'
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to article_path, notice: 'The article has been successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :date)
  end
end
