Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get 'homes/index', to: 'homes#index'
  get 'homes/about', to: 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
