class Api::V1::UserAnswersController < ApplicationController
  def index
      @brain_score = current_user.score
  end
end
