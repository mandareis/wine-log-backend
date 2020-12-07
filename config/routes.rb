Rails.application.routes.draw do
  resources :loves
  resources :wines, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:show, :create]
  resources :comments, only: [:index, :show, :create, :delete]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
