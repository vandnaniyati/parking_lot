Rails.application.routes.draw do
  root "parkings#index"

  resources :parkings do
    resources :entry_points, only: [:new, :edit, :create, :update]
  end
end
