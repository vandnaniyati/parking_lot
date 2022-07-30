Rails.application.routes.draw do
  root "parkings#index"

  resources :parkings
end
