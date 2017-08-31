Rails.application.routes.draw do
  #root "classrooms#index"
  root to: "users#index"

#clasrooms routes
#  get "/classrooms", to: "classrooms#index", as: "classrooms"

#Users routes
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

#Sessions routes
  get '/login', to: 'sessions#new'

end
