class UserAnswersController < ApplicationController

  before_action :authenticate_user!

  def create
    @user_answer = UserAnswer.create(
      answer_id: params[:answer_id],
      user_id: current_user.id
    )
    if params[:question_id].to_i > Question.last.id
      redirect_to "/user_answers"
    else
      redirect_to "/questions/#{ params[:question_id] }"
    end
  end

  def show
    @user_answers = UserAnswer.where(user_id: current_user.id)
  end
end
