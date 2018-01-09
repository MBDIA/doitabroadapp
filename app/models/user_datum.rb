class UserDatum < ApplicationRecord
  belongs_to :user

  validates :phone_number, presence: true
  validates :study_level, presence: true

  has_attached_file :passport
  validates_attachment_content_type :passport, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  has_attached_file :resume
  validates_attachment_content_type :resume, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  has_attached_file :motivation_letter
  validates_attachment_content_type :motivation_letter, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  has_attached_file :marks
  validates_attachment_content_type :marks, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  has_attached_file :others
  validates_attachment_content_type :others, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
end
