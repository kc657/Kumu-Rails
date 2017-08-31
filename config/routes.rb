Rails.application.routes.draw do
  root "classrooms#index"

  get "/classrooms", to: "classrooms#index", as: "classrooms"
  get "/users", to: "users#index", as: "users"
end
