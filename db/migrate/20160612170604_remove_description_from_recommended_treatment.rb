class RemoveDescriptionFromRecommendedTreatment < ActiveRecord::Migration
  def change
    remove_column :recommended_treatments, :description, :string
  end
end
