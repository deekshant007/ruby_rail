Rails.application.routes.draw do
  root 'home#index' 
  get 'login', to: 'sessions#new', as: :login
  post 'sessions', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout

  resources :patients 
  get 'dashboard', to: 'doctors#index', as: :doctor_dashboard  
end
