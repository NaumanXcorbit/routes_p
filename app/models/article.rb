class Article < ApplicationRecord
  has_one_attached :image, :dependent => :destroy
  after_commit :show_details

  def show_details
    puts "#{self.title} have some changing right now"
  end
end
