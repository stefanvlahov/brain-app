class AddUserSurveyIdToUserAnswer < ActiveRecord::Migration
  def change
    add_column :user_answers, :user_survey_id, :integer
  end
end
