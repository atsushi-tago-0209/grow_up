class Target < ApplicationRecord
  has_many :post_targets, dependent: :destroy
  has_many :posts , through: :post_targets,dependent: :destroy
end
