class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.create(
      answer_id: params[:id],
      user_id: current_user.id
    )
    if params[:question_id].to_i > Question.last.id
      redirect_to "/results"
    else
      redirect_to "/questions/#{ params[:question_id] }"
    end
  end
end
