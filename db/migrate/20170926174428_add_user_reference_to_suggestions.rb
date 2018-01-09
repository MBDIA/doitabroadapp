class AddUserReferenceToSuggestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :suggestions, :user, foreign_key: true
  end
end
