Rails.application.routes.draw do
  
  devise_for :users
  root "checklists#index"
  resources :audits, only: [:index, :new, :create, :destroy]

  resources :checklists do
    resources :questions
  end

  
  
end
