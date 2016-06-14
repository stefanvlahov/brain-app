class AddTreatmentIdToAnswerTreatments < ActiveRecord::Migration
  def change
    add_column :answer_treatments, :treatment_id, :integer
  end
end
