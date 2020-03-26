Rails.application.routes.draw do
  resources :calendars
  resources :charts
  # resource :main, only: [:index, :update]
  devise_for :users
  root "main#index"
end
