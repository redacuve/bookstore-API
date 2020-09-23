class BooksSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :percentage

  belongs_to :category
end
