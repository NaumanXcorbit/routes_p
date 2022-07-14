class Publisher < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :email, uniqueness: true, on: :create, allow_blank: true
end
