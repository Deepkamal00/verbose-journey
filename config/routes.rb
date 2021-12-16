Rails.application.routes.draw do
  devise_for :people
  get 'pages/:permalink' => "pages#permalink", as: 'permalink'
  resources :cart, only:%i[create destroy]

  resources :provincs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :suppliers
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to:"products#index"

scope "checkouy" do
  post "create", to: "checkouy#create", as: "checkout_create"
  get "success", to: "checkouy#success", as: "checkout_success"
  get "cancel", to: "checkouy#cancel", as: "checkout_cancel"
end

  get "signup", to: "customers#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :customers, except: [:new]

end
