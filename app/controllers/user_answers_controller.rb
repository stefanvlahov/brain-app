class UserAnswersController < ApplicationController

  before_action :authenticate_user!

  def create
    @user_answer = UserAnswer.create(
      answer_id: params[:answer_id],
      user_id: current_user.id
    )
    if params[:question_id].to_i > Question.last.id
      redirect_to "/results"
    else
      redirect_to "/questions/#{ params[:question_id] }"
    end
  end
  
  def show
    @user_answers = UserAnswer.last(4)

    # @answer_influence = (100.to_f / (Question.sum(:influence_score))).to_f

    @brain_score = current_user.score
  end
end
