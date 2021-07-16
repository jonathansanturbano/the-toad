class Book < ApplicationRecord
  has_many_attached :photos
  has_many :basketItems, as: :buyable
  validates :title, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :age, presence: true
  validates :material, presence: true
  validates :pages, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :category, inclusion: { in: ["signed", "unsigned"] }
end
