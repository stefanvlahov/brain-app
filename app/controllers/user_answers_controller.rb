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

    # @current_answers = @user_answers.all(id: current_user.id)
    # @user_answers = UserAnswer.find(:all, :order => "id desc", :limit => 5)
  end

end
