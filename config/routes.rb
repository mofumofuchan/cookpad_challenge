Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/copyrights'

  get 'static_pages/help'

  devise_for :users
  get 'users/:id', to: 'users#show'

  get 'articles/index'
  post 'articles/create'
  get 'articles/new'

  root 'static_pages#home'
end
