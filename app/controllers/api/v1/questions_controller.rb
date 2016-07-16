class Api::V1::QuestionsController < ApplicationController
  before_action :authenticate_user!
  def show
    @question = Question.find(params[:id])

    @last = Question.last.id

    if @question == @last
      redirect_to "/survey/results"
    end
  end
end
