Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  get "/questions/:id" => "questions#show"
  post "/user_answers" => "user_answers#create"
  get "/results" => "results#index"

  get "/recommendations" => "recommendations#index"

end
