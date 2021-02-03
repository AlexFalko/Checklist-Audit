Rails.application.routes.draw do
  
  devise_for :users
  root "checklists#index"
  resources :checklists do
    resources :questions
  end

  
  
end
