Rails.application.routes.draw do
  get 'articles/index'
  post 'articles/create'
  get 'articles/new'

  devise_for :users
  root 'static_pages#home'
end
