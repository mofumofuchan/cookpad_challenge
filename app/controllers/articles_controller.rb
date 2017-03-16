class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.save
  end

  def index
    @articles = Article.all.includes(:user) # FIXME
  end

  private
    def article_params
      params.require(:article).permit(:content, :drawing)
    end
end
