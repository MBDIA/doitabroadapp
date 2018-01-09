class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.integer :diploma_one_id
      t.integer :diploma_two_id
      t.integer :diploma_three_id
      t.integer :diploma_four_id
      t.integer :diploma_five_id

      t.timestamps
    end
  end
end
