Rails.application.routes.draw do
  resources :units
  root 'dashboard#index'
  resources :clients
  resources :employees
  resources :addresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
