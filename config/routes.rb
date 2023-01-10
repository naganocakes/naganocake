Rails.application.routes.draw do
    devise_for :customers
  devise_for :users
  namespace :admin do
    get 'homes/top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, except: :destroy

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
