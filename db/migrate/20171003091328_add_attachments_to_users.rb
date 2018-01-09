class AddAttachmentsToUsers < ActiveRecord::Migration[5.0]
  def up
    add_attachment :users, :passport
    add_attachment :users, :resume
    add_attachment :users, :motivation_letter
    add_attachment :users, :marks
    add_attachment :users, :others
  end

  def down
    remove_attachment :users, :passport
    remove_attachment :users, :resume
    remove_attachment :users, :motivation_letter
    remove_attachment :users, :marks
    remove_attachment :users, :others
  end
end
