Rails.application.routes.draw do
  
  devise_for :users
  resources :checklists, only: [:index, :new, :create, :destroy]
  root "checklists#index"
  
  
end
