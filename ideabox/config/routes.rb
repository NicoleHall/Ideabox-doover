Rails.application.routes.draw do
  resources :users, only:[:new, :create, :show]
  resources :ideas, only:[:new, :create, :show]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
