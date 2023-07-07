Rails.application.routes.draw do
  resources :cabs, only: [:index]
  resources :bookings, only: [:create, :index, :show, :destroy]
end
