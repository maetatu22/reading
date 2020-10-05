Rails.application.routes.draw do
  devise_for :users
  root to: "outputs#index"
  resources :users, only: :show
  resources :outputs do
   resources :comments, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
