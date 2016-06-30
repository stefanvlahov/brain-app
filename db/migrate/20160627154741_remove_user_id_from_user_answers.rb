class RemoveUserIdFromUserAnswers < ActiveRecord::Migration
  def change
    remove_column :user_answers, :user_id, :integer
  end
end
