Rails.application.routes.draw do
  root 'classrooms#index'

  #Classrooms routes
  get '/classrooms', to:'classrooms#index', as: 'classrooms'

  #Users routes
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: "users#show", as: 'user'
  post '/users', to: 'users#create'

  #Sessions routes
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  #Post routes
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  get '/post/new', to: 'posts#new', as: 'new_post'
  post '/posts', to: 'posts#create'
  patch '/posts/:id', to: 'post#update'
  delete '/posts/:id', to: 'posts#destroy'

end
