class CreateDiplomas < ActiveRecord::Migration[5.0]
  def change
    create_table :diplomas do |t|
      t.string :name
      t.string :type
      t.string :discipline
      t.string :program_website
      t.string :country
      t.string :city
      t.string :university
      t.integer :tution_fees
      t.string :tution_fees_period
      t.integer :degree_length
      t.string :degree_length_period
      t.string :delivery_mode

      t.timestamps
    end
  end
end
