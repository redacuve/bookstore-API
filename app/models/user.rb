class User < ApplicationRecord
  has_many :books

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password_digest
end
