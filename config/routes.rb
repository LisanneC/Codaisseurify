Rails.application.routes.draw do
  root to: 'artists#index'

  resources :photo

  resources :artists do
    resources :songs, only: [:create, :destroy]
  end

  namespace :api do
      resources :songs
    end
end
