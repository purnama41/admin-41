Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  #get 'store/index'

  resources :products
  resources :posts
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root to: "admin/dashboard#index"

  root 'store#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member
  end

end
