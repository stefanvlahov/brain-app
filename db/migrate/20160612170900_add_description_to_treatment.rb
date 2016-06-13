class AddDescriptionToTreatment < ActiveRecord::Migration
  def change
    add_column :treatments, :description, :string
  end
end
