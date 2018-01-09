class RemoveUserInfosFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :phone_number
    remove_column :users, :birthday
    remove_column :users, :study_level
    remove_column :users, :specialisation
    remove_column :users, :user_diploma
    remove_column :users, :description
    remove_column :users, :favourite_pays
    remove_column :users, :budget
    remove_column  :users, :passport_file_name
    remove_column  :users, :passport_content_type
    remove_column :users, :passport_file_size
    remove_column :users, :passport_updated_at
    remove_column  :users, :resume_file_name
    remove_column  :users, :resume_content_type
    remove_column :users, :resume_file_size
    remove_column :users, :resume_updated_at
    remove_column  :users, :motivation_letter_file_name
    remove_column  :users, :motivation_letter_content_type
    remove_column :users, :motivation_letter_file_size
    remove_column :users, :motivation_letter_updated_at
    remove_column  :users, :marks_file_name
    remove_column  :users, :marks_content_type
    remove_column  :users, :marks_file_size
    remove_column :users, :marks_updated_at
    remove_column  :users, :others_file_name
    remove_column  :users, :others_content_type
    remove_column :users, :others_file_size
    remove_column :users, :others_updated_at
  end
end
