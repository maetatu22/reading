Rails.application.routes.draw do
  devise_for :users
  resources :outputs, only: [:index, :new, :create, :show, :edit, :update]
  root to: "outputs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
