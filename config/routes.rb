Rails.application.routes.draw do
  root "static_pages#home"
  resources :users do 
    resources :buildings
  end
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'
  post '/projects', to: 'projects#create'
end
