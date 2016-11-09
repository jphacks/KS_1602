Rails.application.routes.draw do
  resources :contacts
  resources :user_pages
  resources :list_goods
  resources :count_wants
  resources :categories
  resources :wants

  resources :users, :only => [:show]

  devise_for :users
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "wants#index"


end
