class Post < ApplicationRecord
  # validates :title, :place, :belongings, :target, :sentence, :schedule, :time, presence:true
  belongs_to :user
  has_many :post_targets
  has_many :targets , through: :post_targets
  validates :title , presence: true
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :post_targets, allow_destroy: true
end
