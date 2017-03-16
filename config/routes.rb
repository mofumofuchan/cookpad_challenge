Rails.application.routes.draw do
  devise_for :users
  get 'users/:id', to: 'users#show'

  get 'articles/index'
  post 'articles/create'
  get 'articles/new'

  root 'static_pages#home'
end
