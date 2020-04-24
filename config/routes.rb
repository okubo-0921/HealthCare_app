Rails.application.routes.draw do
  resources :calendars
  resources :charts
  resources :main, only: [:index]
  resources :calories, only: [:index, :destroy]

  get 'objs', to: 'obj#new'
  post 'objs', to: 'obj#create'

  devise_for :users
  root "main#index"
end
