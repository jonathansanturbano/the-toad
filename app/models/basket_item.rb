class BasketItem < ApplicationRecord
  belongs_to :buyable, polymorphic: true
  belongs_to :basket
end
