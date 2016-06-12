class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
