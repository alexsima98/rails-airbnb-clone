Rails.application.routes.draw do
  devise_for :users
  root to: 'couches#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :couches, only: [:index, :new, :create]
  resources :couches, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only:[:show]
  resources :bookings, only: [:edit, :update, :show] do
    member do
      patch '/accept', to: 'bookings#accept'
      patch '/decline', to: 'bookings#decline'
      patch '/cancel', to: 'bookings#cancel'
    end
  end
  get '/dashboard', to: 'dashboard#show'
end
