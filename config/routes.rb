Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :show] do
        get :search, on: :collection
      end
      resources :casts, only: [:show]
    end
  end
end