class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :supplier
  validates :title, presence: true, uniqueness: true
end
