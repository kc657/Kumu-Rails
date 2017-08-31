Rails.application.routes.draw do
  root "classrooms#index"

  get "/classrooms", to: "classrooms#index", as: "classrooms"

end
