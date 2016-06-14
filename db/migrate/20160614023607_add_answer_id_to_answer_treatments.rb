class AddAnswerIdToAnswerTreatments < ActiveRecord::Migration
  def change
    add_column :answer_treatments, :answer_id, :integer
  end
end
