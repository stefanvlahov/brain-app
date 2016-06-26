Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  get "/questions/:id" => "questions#show"

  post "/user_answers" => "user_answers#create"
  get "/results" => "user_answers#show"

  post "/survey" => "user_survey#create"

  post "/recommendations" => "recommendations#create"
  get "/recommendations" => "recommendations#index"

end
