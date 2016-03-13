Rails.application.routes.draw do
  namespace :api do
    resources :bills, only: [:show]
  end
end
