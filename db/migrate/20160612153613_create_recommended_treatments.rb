class CreateRecommendedTreatments < ActiveRecord::Migration
  def change
    create_table :recommended_treatments do |t|

      t.timestamps null: false
    end
  end
end
