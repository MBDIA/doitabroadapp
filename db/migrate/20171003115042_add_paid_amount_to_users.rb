class AddPaidAmountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :paid_amount, :integer, default: 0
  end
end
