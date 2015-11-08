Rails.application.routes.draw do
  resources :users, only:[:new, :create, :show]

  get '/login', to: 'sessions#new'
end
