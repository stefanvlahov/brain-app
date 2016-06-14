class AddAnswerIdToUserAnswers < ActiveRecord::Migration
  def change
    add_column :user_answers, :answer_id, :integer
  end
end
