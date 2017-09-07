Rails.application.routes.draw do

  root 'home#index'

  #Home route
  get 'home/index', as: 'home'

  #Users routes
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'

  #Sessions routes
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  #Post routes
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/newest', to: 'posts#date_sort', as: 'posts_by_date'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'

  #Topics routes
  get '/topics', to: 'topics#index', as: 'topics'
  get '/topics/:id', to: 'topics#show', as: 'topic'
  get '/topic/new', to: 'topics#new', as: 'new_topic'
  get '/topics/:id/edit', to: 'topics#edit', as: 'edit_topic'
  post '/topics', to: 'topics#create', as: 'create_topic'
  patch '/topics/:id', to: 'topics#update'
  delete '/topics/:id', to: 'topics#destroy'

  #topic-post routes
  get '/topics/:id/post/new', to: 'posts#new', as: 'new_post'
  get '/topics/:id/posts', to: 'topics#show'
  post '/topics/:id/posts', to: 'posts#create', as: 'create_post'

  # Voting routes
  resources :posts, only: [] do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end


end
