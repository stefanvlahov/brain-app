class RemoveRatingFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :rating, :string
  end
end
