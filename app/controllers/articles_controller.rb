class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]
  # before_filter :authenticate_user!
  respond_to :html

  def index
    @articles = Article.all
    respond_with @articles
  end

  def show
    @parent = @article
    @comment = Comment.new
  end

  def new
    if !current_user.editor
      redirect_to root_path
    end
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
  end

  def update
    if @article.update_attributes(article_params)
      redirect_to article_path, notice: 'The article has been successfully updated.'
    else
      render action: 'edit'
    end
  end

  private
    def set_acticle
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :date, :description, :user_id, :cover)
    end
end
