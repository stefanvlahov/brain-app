class UserSurveysController < ApplicationController

  @user_survey = UserSurveysController.create(
    question_id: params[:answer_id],
    user_id: current_user.id
  )
end
