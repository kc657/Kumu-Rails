Rails.application.routes.draw do
  root "classrooms#index"
  get "/classrooms", to: "classrooms#index", as: "classrooms"
  get "/posts", to: "posts#index", as: "posts"

end
