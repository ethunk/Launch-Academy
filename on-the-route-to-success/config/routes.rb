Rails.application.routes.draw do
  resources :horses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars
  resources :trains
  resources :airplanes 
end
