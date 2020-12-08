Rails.application.routes.draw do
  resources :loves, only: [:index, :show, :create, :destroy]
  resources :wines, only: [:index, :create, :show, :update, :destroy]
  resources :users, only: [:show, :create]
  resources :comments, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
