class RemoveRowFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :other_specialisation
    remove_column :users, :other_study_level
  end
end
