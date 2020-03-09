class Post < ApplicationRecord
  belongs_to :user
  has_many :post_targets
  has_many :targets , through: :post_targets, dependent: :destroy
  validates :title ,:place,:sentence,:belongings,:sentence,:schedule,:time,:endtime,:capacity, presence: true
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :post_targets, allow_destroy: true
end
