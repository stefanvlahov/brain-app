class AddRatingToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :rating, :float
  end
end
