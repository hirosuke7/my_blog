Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  devise_for :users
  resources :posts
  root 'posts#index'
  
end
