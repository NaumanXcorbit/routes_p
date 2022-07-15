class Book < ApplicationRecord
   validates :name, presence: true, length: { in: 6..12 }
   validates :price, numericality: true
  # validates :name, presence: true, length: { maximum: 10 }
  #  validates :name, presence: true, length: { minimum: 5 }
  # validates :name, presence: true, length: { is: 5 }
   before_validation :remove_white_space
   after_validation :name_capitalize

   def remove_white_space
      self.name.strip!
   end

   def name_capitalize
      self.name.capitalize!
   end
end
