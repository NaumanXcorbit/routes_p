class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'post destroyed'
  end
end
