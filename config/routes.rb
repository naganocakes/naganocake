Rails.application.routes.draw do
    devise_for :customers
  devise_for :users
  namespace :admin do
    get 'homes/top'
    # resources :customers, only: [:index]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, except: :destroy
    # resources :orders, only: [:index, :show, :update]
    # resources :order_details, only: [:update]
    # get 'search' => 'items#search'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
