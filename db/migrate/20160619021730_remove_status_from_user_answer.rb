class RemoveStatusFromUserAnswer < ActiveRecord::Migration
  def change
    remove_column :user_answers, :status, :string
  end
end
