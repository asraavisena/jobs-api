Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root to: "jobs#home"
      resources :languages
      resources :jobs
      get 'search', to: "jobs#search"
      get 'search', to: "jobs#searchL"
      get 'update/:id', to: "jobs#supdate"

      resources :users
      resources :registrations, only: :create
      resources :sessions, only: :create
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
