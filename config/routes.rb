Rails.application.routes.draw do
  get 'landing_pages/home'

  devise_for :users
  resources :contacts
  resources :user_pages
  resources :likes
  resources :count_wants
  resources :categories
  resources :wants do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, :only => :show

  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "landing_pages#home"


end
