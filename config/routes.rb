Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  post "/surveys" => "user_surveys#create"
  get "/survey/questions/:id" => "questions#show"

  namespace :api do
    namespace :v1 do
      get "/survey/questions/:id" => "questions#show"
    end
  end

  post "/user_answers" => "user_answers#create"
  get "/survey/results" => "user_answers#index"

  namespace :api do
    namespace :v1 do
      post "/user_answers" => "user_answers#create"
      get "/survey/results" => "user_answers#index"
    end
  end

  post "/recommendations" => "recommendations#create"
  get "/recommendations" => "recommendations#index"

end
