class Comment < ApplicationRecord
  belongs_to :post
  around_destroy :show_delete_info

  def show_delete_info
    puts "Your parent post #{self.post.title} in destroying"
    yield
  end
end
