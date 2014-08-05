class CreateMultiplechoices < ActiveRecord::Migration
  def change
    create_table :multiplechoices do |t|
      t.string :answer
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
