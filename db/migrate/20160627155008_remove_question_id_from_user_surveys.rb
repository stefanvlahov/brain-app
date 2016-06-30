class RemoveQuestionIdFromUserSurveys < ActiveRecord::Migration
  def change
    remove_column :user_surveys, :question_id, :integer
  end
end
