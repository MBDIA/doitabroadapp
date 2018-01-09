class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :tracking_status, default: "Pending"
      t.string :payment_status, default: "Unpaid"
      t.datetime :skype_meeting

      t.timestamps
    end
  end
end
