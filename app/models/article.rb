class Article < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true
end
