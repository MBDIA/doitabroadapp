class CreateUserData < ActiveRecord::Migration[5.0]
  def change
    create_table :user_data do |t|
      t.string :phone_number
      t.string :birthday
      t.string :study_level
      t.string :specialisation
      t.string :user_diploma
      t.string :description
      t.string :favourite_pays
      t.string :budget
      t.string  :passport_file_name
      t.string  :passport_content_type
      t.integer :passport_file_size
      t.datetime :passport_updated_at
      t.string  :resume_file_name
      t.string  :resume_content_type
      t.integer :resume_file_size
      t.datetime :resume_updated_at
      t.string  :motivation_letter_file_name
      t.string  :motivation_letter_content_type
      t.integer :motivation_letter_file_size
      t.datetime :motivation_letter_updated_at
      t.string  :marks_file_name
      t.string  :marks_content_type
      t.integer  :marks_file_size
      t.datetime:marks_updated_at
      t.string  :others_file_name
      t.string  :others_content_type
      t.integer :others_file_size
      t.datetime :others_updated_at
      t.timestamps
    end
  end
end
