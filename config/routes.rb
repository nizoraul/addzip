Rails.application.routes.draw do
  root to: "zip_codes#index"
  resources :zip_codes, only: [:index]
end
