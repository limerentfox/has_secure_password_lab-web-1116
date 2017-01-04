Rails.application.routes.draw do
  resources :sessions


  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
