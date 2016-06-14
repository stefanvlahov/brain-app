class AddUserIdToUserAnswers < ActiveRecord::Migration
  def change
    add_column :user_answers, :user_id, :integer
  end
end
