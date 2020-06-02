Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => "home#about"

  devise_for :users

  resources :users, only: [:new, :show,:index,:edit,:update]
  resources :books
end