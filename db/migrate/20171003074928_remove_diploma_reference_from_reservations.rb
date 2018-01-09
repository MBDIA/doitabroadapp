class RemoveDiplomaReferenceFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_reference :reservations, :diploma, index: true
  end
end
