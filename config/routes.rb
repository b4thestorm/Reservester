Rails.application.routes.draw do
  root to: 'restaraunts#index'
  resources :restaraunts
end
