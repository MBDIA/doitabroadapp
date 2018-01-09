class AddDiplomaPhotoToDiploma < ActiveRecord::Migration[5.0]
  def change
    add_column :diplomas, :diploma_photo, :string
  end
end
