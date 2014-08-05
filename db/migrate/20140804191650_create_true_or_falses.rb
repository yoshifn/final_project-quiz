class CreateTrueOrFalses < ActiveRecord::Migration
  def change
    create_table :true_or_falses do |t|
      t.string :answer

      t.timestamps
    end
  end
end
