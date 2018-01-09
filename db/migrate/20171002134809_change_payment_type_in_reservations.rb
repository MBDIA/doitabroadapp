class ChangePaymentTypeInReservations < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :payment, :json
  end
end
