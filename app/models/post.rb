class Post < ApplicationRecord
  # validates :title, :place, :belongings, :target, :sentence, :schedule, :time, presence:true
  belongs_to :user
  belongs_to :target
  has_one :image
end
