class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to articles_index_path
    else
      render 'new'
    end
  end

  def index
    @articles = Article.order("created_at DESC").includes(:user) # TODO ページングする
    @users = User.order("created_at DESC").limit(4)
  end

  private
    def article_params
      params.require(:article).permit(:content, :drawing)
    end
end
