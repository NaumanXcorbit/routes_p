class Magazine < ApplicationRecord
  has_many :ads
  accepts_nested_attributes_for :ads
end
