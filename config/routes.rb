Rails.application.routes.draw do
  devise_for :users
  root "checklists#index"
  resources :audits
  resources :checklists do
    member do
      patch :toggle_status
    end
  end
end
