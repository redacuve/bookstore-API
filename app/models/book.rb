class Book < ApplicationRecord
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
  validates_presence_of :title
  validates_numericality_of :percentage, greater_than_or_equal_to: 1, less_than_or_equal_to: 100
end
