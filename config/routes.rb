Rails.application.routes.draw do
  resources :bungas
  root 'tabungans#index'
  resources :tabungans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
