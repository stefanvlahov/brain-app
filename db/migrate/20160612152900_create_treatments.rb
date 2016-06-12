class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :name
      t.decimal :influence_score

      t.timestamps null: false
    end
  end
end
