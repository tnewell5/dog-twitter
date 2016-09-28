Rails.application.routes.draw do
  devise_for :dogs
  root to: "dogs#index"
  resources :barks
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
