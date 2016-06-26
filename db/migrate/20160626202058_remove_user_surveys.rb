class RemoveUserSurveys < ActiveRecord::Migration
  def change
    drop_table :user_surveys
  end
end
