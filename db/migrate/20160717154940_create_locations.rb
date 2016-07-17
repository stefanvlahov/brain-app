class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :treatment_type
      t.string :vicinity
      t.string :rating

      t.timestamps null: false
    end
  end
end
