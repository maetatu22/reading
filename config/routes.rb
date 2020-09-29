Rails.application.routes.draw do
  resources :outputs
  root to: "outputs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
