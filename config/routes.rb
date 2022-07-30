Rails.application.routes.draw do
  resources :cars
  root "parkings#index"

  resources :parkings do
    resources :entry_points, only: [:new, :edit, :create, :update]
    resources :spots, only: [:new, :edit, :create, :update]
  end
end
