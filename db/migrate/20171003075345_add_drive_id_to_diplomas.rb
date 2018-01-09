class AddDriveIdToDiplomas < ActiveRecord::Migration[5.0]
  def change
    add_column :diplomas, :google_sheets_id, :integer
  end
end
