class CreateAnswerTreatments < ActiveRecord::Migration
  def change
    create_table :answer_treatments do |t|

      t.timestamps null: false
    end
  end
end
