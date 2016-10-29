Rails.application.routes.draw do
  resources :list_goods
  resources :count_wants
  resources :categories
  resources :wants
  devise_for :users
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"


end
