Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats do
    resources :reviews, only: [ :new, :create ]
    resources :bookings ,only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
