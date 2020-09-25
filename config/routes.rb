Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :appointments 
  resources :patients, only: [:show, :index]
  resources :doctors
end