class Note < ApplicationRecord
  has_many :subscribers, dependent: :destroy
  has_rich_text :content
  has_one_attached :image

  validates :name, presence: true
  validates :update_count, numericality: { greater_than_or_equal_to: 0 }
end
