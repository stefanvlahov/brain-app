class AddDescriptionToRecommendedTreatment < ActiveRecord::Migration
  def change
    add_column :recommended_treatments, :description, :string
  end
end
