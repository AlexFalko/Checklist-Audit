Rails.application.routes.draw do
  
  devise_for :users
  resources :checklists, only: [:index, :new, :create, :destroy, :show]
  root "checklists#index"
  
  
end
