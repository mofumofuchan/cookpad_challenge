class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to "/users/" + @article.user_id.to_s
    else
      render 'new'
    end
  end

  def index
    @articles = Article.order("created_at DESC").limit(10).includes(:user) # TODO ページングする
    # @users = User.order("created_at DESC").limit(4)
  end

  private
    def article_params
      params.require(:article).permit(:content, :drawing)
    end
end
