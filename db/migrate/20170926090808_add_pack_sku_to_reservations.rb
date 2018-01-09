class AddPackSkuToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :pack_sku, :string
    add_monetize :reservations, :amount, currency: { present: false }
    add_column :reservations, :payment, :json
  end
end
