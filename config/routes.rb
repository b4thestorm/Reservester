Rails.application.routes.draw do
 
  root to: 'restaraunts#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  

  resources :restaraunts  do
    resources :reservations, only: [:create]
	end
	
	
  resources :categories, only: [:index,:show,:new,:create]
end
