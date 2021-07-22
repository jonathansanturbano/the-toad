class Fanart < ApplicationRecord
  has_one_attached :photo
  validates :author, presence: true
end
