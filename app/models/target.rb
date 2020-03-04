class Target < ApplicationRecord
  has_many :post_targets
  has_many :posts , through: :post_targets
end
