class Api::V1::ResultsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user_answer = UserAnswer.create(
      answer_id: params[:answer_id],
      user_survey_id: current_user.user_surveys.last.id
    )

    head :ok
  end

  def index
    @user_answers = UserSurvey.last.user_answers
    @categories = Category.all
    @questions = Question.all

    @diet_performance = current_user.diet_positive?
    @exercise_performance = current_user.exercise_positive?
    @stress_performance = current_user.stress_positive?
    @sleep_performance = current_user.sleep_positive?
    @diet_score = current_user.diet_score
    @exercise_score = current_user.exercise_score
    @stress_score = current_user.stress_score
    @sleep_score = current_user.sleep_score

    if current_user.score < 0
      @brain_score = 0
    elsif current_user.score > 100
      @brain_score = 100
    else
      @brain_score = current_user.score
    end
  end
end
