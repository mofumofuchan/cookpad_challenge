class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = @user.articles.order("created_at DESC") # TODO ページングする
  end

end
