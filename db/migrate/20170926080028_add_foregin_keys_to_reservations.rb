class AddForeginKeysToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :user, foreign_key: true
    add_reference :reservations, :pack, foreign_key: true
    add_reference :reservations, :diploma, foreign_key: true
  end
end
