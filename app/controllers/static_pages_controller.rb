class StaticPagesController < ApplicationController
  def home
    if signed_in?
      redirect_to "/users/"+current_user.id.to_s # FIXME
    end
  end

  def copyrights
  end

  def help
  end
end
