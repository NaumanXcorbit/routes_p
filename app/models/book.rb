class Book < ApplicationRecord
   validates :name, presence: true, length: { in: 6..12 }
   validates :price, numericality: true
  # validates :name, presence: true, length: { maximum: 10 }
  #  validates :name, presence: true, length: { minimum: 5 }
  # validates :name, presence: true, length: { is: 5 }
   before_validation :remove_white_space
   after_validation :name_capitalize
   before_create :show_book_status
   after_create :change_status
   enum status: { pending: 0, active: 1, archived: 2
   }
   def remove_white_space
      self.name.strip!
   end

   def name_capitalize
      self.name.capitalize!
   end

   def show_book_status
      puts "Book status is #{self.status}"
   end

   def change_status
      self.update(status: :archived)
   end
end
