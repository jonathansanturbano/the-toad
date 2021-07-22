class Book < ApplicationRecord
  has_many_attached :photos
  has_many :basketItems, as: :buyable
  validates :title, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :age, presence: true
  validates :material, presence: true
  validates :pages, presence: true, numericality: {greater_than: 0}
  validates :year, presence: true, numericality: {greater_than: 0}
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :size, presence: true
  validates :signature_fee, presence: true
end
