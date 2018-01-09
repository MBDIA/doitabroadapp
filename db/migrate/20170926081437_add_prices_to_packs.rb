class AddPricesToPacks < ActiveRecord::Migration[5.0]
  def change
    add_monetize :packs, :price, currency: { present: false }
  end
end
