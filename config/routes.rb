Rails.application.routes.draw do
  devise_for :users
  resources :jobs
  resources :users
  resources :languages

  get 'search', to: "jobs#search"
  get 'search', to: "jobs#searchL"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
