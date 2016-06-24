class AddInfluenceScoreToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :influence_score, :integer
  end
end
