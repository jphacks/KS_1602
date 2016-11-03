Rails.application.routes.draw do
  resources :contacts
  resources :user_pages
  resources :list_goods
  resources :count_wants
  resources :categories
  resources :wants
  devise_for :users
  resources :users, :only => [:index, :show]
  
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "wants#index"


end
