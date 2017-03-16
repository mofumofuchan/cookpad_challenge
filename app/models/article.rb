class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :drawing, DrawingUploader
  validates :user_id, presence: true
  validates :drawing, presence: true
end
