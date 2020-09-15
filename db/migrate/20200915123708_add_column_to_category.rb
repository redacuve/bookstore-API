class AddColumnToCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :book, null: true, foreign_key: true
  end
end
