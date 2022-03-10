class Book < ApplicationRecord
  belongs_to :author
  validates :title, uniqueness: true, presence: true, length: { minimum: 3, maximum: 30 }
end
