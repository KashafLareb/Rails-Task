class Author < ApplicationRecord
  has_one :book
  accepts_nested_attributes_for :book
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :id, uniqueness: true
end
