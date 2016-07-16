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
    @category_performance = Category.find(1).influence_score

    # @answer_influence = (100.to_f / (Question.sum(:influence_score))).to_f

    if current_user.score < 0
      @brain_score = 0
    elsif current_user.score > 100
      @brain_score = 100
    else
      @brain_score = current_user.score
    end
  end
end
