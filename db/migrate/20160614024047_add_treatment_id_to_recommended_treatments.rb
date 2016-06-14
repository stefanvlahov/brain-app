class AddTreatmentIdToRecommendedTreatments < ActiveRecord::Migration
  def change
    add_column :recommended_treatments, :treatment_id, :integer
  end
end
