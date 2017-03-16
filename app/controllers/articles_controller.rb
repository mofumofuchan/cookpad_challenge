class ArticlesController < ApplicationController
  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @article = Article.new
  end

  def create
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    pp @article.valid? # debug
    @article.save
  end

  def index
  end

  private
    def article_params
      params.require(:article).permit(:content, :drawing)
    end
end
