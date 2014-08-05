class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :quiz_id
      t.integer :user_id

      t.timestamps
    end
  end
end
