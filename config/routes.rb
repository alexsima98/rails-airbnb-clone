Rails.application.routes.draw do
  devise_for :users
  root to: 'couches#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :couches, only: [:index, :new, :create]
  resources :couches, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only:[:show]
end
