Rails.application.routes.draw do
  resources :charts
  devise_for :users
  root "main#index"
end
