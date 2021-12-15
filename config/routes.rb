Rails.application.routes.draw do
  get 'contact/index'
  get 'contact/show'
  get 'about/index'
  get 'about/show'
  resources :provincs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :suppliers
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to:"products#index"


  get "signup", to: "customers#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :customers, except: [:new]

end
