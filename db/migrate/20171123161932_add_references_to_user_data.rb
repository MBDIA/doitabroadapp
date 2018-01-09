class AddReferencesToUserData < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_data, :user
  end
end
