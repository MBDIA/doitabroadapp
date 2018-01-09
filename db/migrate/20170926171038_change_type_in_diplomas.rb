class ChangeTypeInDiplomas < ActiveRecord::Migration[5.0]
  def change
    rename_column :diplomas, :type, :diploma_type
  end
end
