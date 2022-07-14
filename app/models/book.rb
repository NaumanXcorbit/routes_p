class Book < ApplicationRecord
   validates :name, presence: true, length: { in: 6..12 }
   validates :price, numericality: true
  # validates :name, presence: true, length: { maximum: 10 }
  #  validates :name, presence: true, length: { minimum: 5 }
  # validates :name, presence: true, length: { is: 5 }
end
