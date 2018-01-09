class AddSkuToPacks < ActiveRecord::Migration[5.0]
  def change
    add_column :packs, :sku, :string
  end
end
