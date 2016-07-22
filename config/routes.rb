Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  post "/surveys" => "user_surveys#create"
  get "/survey/questions/:id" => "questions#show"

  namespace :api do
    namespace :v1 do
      get "/survey/questions/:id" => "questions#show"
      post "/results" => "results#create"
      get "/survey/results" => "results#index"
    end
  end

  get '/results' => 'results#index'

  post "/recommendations" => "recommendations#create"
  get "/recommendations" => "recommendations#index"

end
