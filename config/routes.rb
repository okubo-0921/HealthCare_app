Rails.application.routes.draw do
  resources :calendars
  resources :charts
  resources :main, only: [:index]
  resources :calories, only: [:index]
  devise_for :users
  root "main#index"
end
