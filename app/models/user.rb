class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :entries
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  validates :first_name,:last_name,:first_name_kana,:last_name_kana,:email,presence: true
  validates :password,presence:true,length: { maximum: 6 }
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end