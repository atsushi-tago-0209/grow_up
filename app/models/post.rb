class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional:true
  has_many :post_targets
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :targets , through: :post_targets, dependent: :destroy
  validates :title ,:place,:sentence,:schedule,:time,:endtime,:capacity,:fee, :category_id, presence: true
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :post_targets, allow_destroy: true
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
