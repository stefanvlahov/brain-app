class UserSurveysController < ApplicationController

  def create
    @user_survey = UserSurvey.create(
      user_id: current_user.id
    )

    first_question = Question.first.id

    redirect_to "/survey/questions/#{first_question}"
  end

end
