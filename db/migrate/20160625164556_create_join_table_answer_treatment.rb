class CreateJoinTableAnswerTreatment < ActiveRecord::Migration
  def change
    create_join_table :answers, :treatments do |t|
      t.integer :answer_id
      t.integer :treatment_id
      t.index [:answer_id, :treatment_id]
      # t.index [:treatment_id, :answer_id]
    end
  end
end
