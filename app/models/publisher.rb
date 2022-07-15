class Publisher < ApplicationRecord
  validates :name, presence: { strict: true }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :email, uniqueness: true, on: :create, allow_blank: true
  after_initialize :show_name
  after_find :show_email

  def show_name
    if self.name.present?
      puts "Welcome #{name}-----"
    end
  end

  def show_email
    if self.email.present?
      puts "publisher email is #{email}"
    end
  end

  after_touch do
    puts "publisher have touched an object"
  end
end
