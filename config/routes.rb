EverestApp::Application.routes.draw do
  get '/run', to: 'users#run'
  get '/donut', to: 'users#donut'
  resources :users

  root :to => "sessions#new"

  get "/about" => "users#about"

  get '/auth/:provider/callback', :to => 'sessions#create'

  get '/logout', :to => 'sessions#destroy'

  get '/goals', to: 'goals#index', as: 'goals'
  get '/goals/new', to: 'goals#new', as: 'new_goal'
  post '/goals', to: 'goals#create'
  get '/goals/:id', to: 'goals#show', as: 'goal'

end

