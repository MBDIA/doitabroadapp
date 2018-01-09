class AddOthersToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :other_study_level, :string
    add_column :users, :other_specialisation, :string
  end
end
