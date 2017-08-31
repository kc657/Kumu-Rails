Rails.application.routes.draw do
  root 'classrooms#index'

  #Clasrooms routes
  get '/classrooms', to:'classrooms#index', as: 'classrooms'

  #Users routes
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users', to: "users#index", as: 'users'
  post '/users', to: 'users#create'

  #Sessions routes
  get '/login', to: 'sessions#new'

  #Post routes
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'

  # delete '/posts',

end
