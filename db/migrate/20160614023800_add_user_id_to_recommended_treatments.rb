class AddUserIdToRecommendedTreatments < ActiveRecord::Migration
  def change
    add_column :recommended_treatments, :user_id, :integer
  end
end
