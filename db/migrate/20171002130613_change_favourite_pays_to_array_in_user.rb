class ChangeFavouritePaysToArrayInUser < ActiveRecord::Migration[5.0]
  def change
      change_column :users, :favourite_pays, "varchar[] USING (string_to_array(favourite_pays, ','))"
  end
end
