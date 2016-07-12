class Api::V1::QuestionsController < ApplicationController
  before_action :authenticate_user!
  def show
    @question = Question.find(params[:id])

    if @question = Question.last
      return render json: {}
    end
  end
end
