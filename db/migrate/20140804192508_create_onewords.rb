class CreateOnewords < ActiveRecord::Migration
  def change
    create_table :onewords do |t|
      t.string :answer
      t.string :content
      t.integer :score

      t.timestamps
    end
  end
end
