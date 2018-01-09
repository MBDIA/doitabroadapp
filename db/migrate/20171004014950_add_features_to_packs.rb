class AddFeaturesToPacks < ActiveRecord::Migration[5.0]
  def change
    add_column :packs, :features, :string, array: true, default: []
  end
end
