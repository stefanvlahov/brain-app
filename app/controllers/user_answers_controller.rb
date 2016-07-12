class UserAnswersController < ApplicationController

  before_action :authenticate_user!

  def create
    @user_answer = UserAnswer.create(
      answer_id: params[:answer_id],
      user_survey_id: current_user.user_surveys.last.id
    )

    if params[:question_id].to_i > Question.last.id
      redirect_to "/survey/results"
    else
      redirect_to "/survey/questions/#{ params[:question_id] }"
    end
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
