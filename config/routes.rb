Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  root 'home#index'

  namespace :api do
    # As there is only a single bill a single `resource` would also work.
    # However, I've used resources as you would normally expected to have
    # muliple bills. The controller ignore the id and always returns the same
    # JSON
    resources :bills, only: [:show]
  end
end
