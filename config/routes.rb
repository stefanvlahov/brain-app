Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  post "/surveys" => "user_surveys#create"
  get "/survey/questions/:id" => "questions#show"
  # get "/survey/questions/:id" => "user_surveys#show"

  post "/user_answers" => "user_answers#create"
  get "/survey/results" => "user_answers#index"

  namespace :api do
    namespace :v1 do
      get "/survey/results" => "user_answers#index"
    end
  end

  post "/recommendations" => "recommendations#create"
  get "/recommendations" => "recommendations#index"

end
