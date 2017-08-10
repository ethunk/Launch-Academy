Rails.application.routes.draw do

  resources :campers, only: [:index, :show] do
    resources :supplies, only: [:index, :show]
  end

  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index, :show]
  end

  resources :supplies, only: [:index]
end
