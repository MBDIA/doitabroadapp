class AddInfosToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :birthday, :datetime
    add_column :users, :study_level, :string
    add_column :users, :specialisation, :string
    add_column :users, :diploma, :string
    add_column :users, :description, :text
    add_column :users, :favourite_pays, :string
    add_column :users, :budget, :string
  end
end
