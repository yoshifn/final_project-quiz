class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :answer
      t.integer :score_id

      t.timestamps
    end
  end
end
