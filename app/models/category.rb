class Category < ApplicationRecord
  has_many :book

  validates_presence_of :name
end
