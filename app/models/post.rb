class Post < ApplicationRecord
  # validates :title, :place, :belongings, :target, :sentence, :schedule, :time, presence:true
  belongs_to :user
end
