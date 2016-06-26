class RemoveAnswerTreatmentsTable < ActiveRecord::Migration
  def change
    drop_table :answer_treatments
  end
end
