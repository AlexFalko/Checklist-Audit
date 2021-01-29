Rails.application.routes.draw do
  
  devise_for :users
  resources :checklists, only: [:index]
  root "checklists#index"
  
  
end
