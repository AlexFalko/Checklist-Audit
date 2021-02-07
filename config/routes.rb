Rails.application.routes.draw do
  
  devise_for :users
  root "checklists#index"
  # get '/checklists/:id', to: 'checklist#show'
  resources :audits
  resources :checklists 
    


  
end
