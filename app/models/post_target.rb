class PostTarget < ApplicationRecord
  belongs_to :post
  belongs_to :target
end
