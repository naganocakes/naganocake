Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}



  namespace :admin do
    get 'homes/top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, except: :destroy
    resources :orders, only: [:show, :update]
end

scope module: "public" do
root :to => "homes#top"
get "about" => "homes#about"
resources :registration, only: [:new, :create]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end