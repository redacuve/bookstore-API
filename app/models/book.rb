class Book < ApplicationRecord
  has_one :category

  validates_presence_of :title, :category
  validates_numericality_of :percentage
  validates_numericality_of :percentage, :greater_than_or_equal_to => 1
  validates_numericality_of :percentage, :less_than_or_equal_to => 100
end