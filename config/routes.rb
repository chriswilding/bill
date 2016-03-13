Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  root 'home#index'

  namespace :api do
    resources :bills, only: [:show]
  end
end
