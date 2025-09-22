class Note < ApplicationRecord
  has_rich_text :content
  has_one_attached :image
  validates :name, presence: true
end
