class AddMultiplierToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :multiplier, :integer
  end
end
