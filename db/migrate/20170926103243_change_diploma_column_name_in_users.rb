class ChangeDiplomaColumnNameInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :diploma, :user_diploma
  end
end
