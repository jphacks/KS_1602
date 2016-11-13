Rails.application.routes.draw do
  resources :contacts
  resources :user_pages
  resources :likes
  resources :count_wants
  resources :categories
  resources :wants do
    resources :likes, only: [:create, :destroy]
  end
  devise_for :users
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "wants#index"


end
