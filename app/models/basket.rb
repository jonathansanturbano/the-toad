class Basket < ApplicationRecord
  belongs_to :user
  has_many :basketItems
  has_many :books, through: :basketItems
  has_many :goodies, through: :basketItems
end
