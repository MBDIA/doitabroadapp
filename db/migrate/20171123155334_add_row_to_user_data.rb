class AddRowToUserData < ActiveRecord::Migration[5.0]
  def change
    add_column :user_data, :other_study_level, :string
    add_column :user_data, :other_specialisation, :string
  end
end
