Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: %i[edit update show index]
  resources :books, only: %i[create edit update destroy show index]
  root to: 'homes#index'
  get 'home/about', to: 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
