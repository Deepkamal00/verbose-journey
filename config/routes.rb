Rails.application.routes.draw do
  devise_for :people
  get 'pages/:permalink' => "pages#permalink", as: 'permalink'
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
