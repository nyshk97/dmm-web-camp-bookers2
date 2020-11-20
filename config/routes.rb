Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  resources :users, only: %i[edit update show index]
  root to: 'homes#index'
  get 'homes/index', to: 'homes#index'
  get 'homes/about', to: 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
