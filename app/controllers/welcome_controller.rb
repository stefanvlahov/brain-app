class WelcomeController < ApplicationController
  def index
    @question_id = Question.first.id
  end
end
