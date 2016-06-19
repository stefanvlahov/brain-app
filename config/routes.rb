Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  get "/questions/:id" => "questions#show"
  post "/user_answers" => "user_answers#create"

  get "/user_answers" => "user_answers#show"

  get "/recommendations" => "recommendations#index"

end
