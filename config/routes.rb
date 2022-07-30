Rails.application.routes.draw do
  root "parkings#index"

  resources :parkings do
    resources :entry_points, only: [:new, :edit, :create, :update]
    resources :spots, only: [:new, :edit, :create, :update]
    resources :tickets, only: [:new, :create, :edit, :update]
  end

  resources :cars, only: [:index, :show]
  resources :tickets, only: [:index, :show]
end
