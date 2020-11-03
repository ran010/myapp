class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :comments

end
