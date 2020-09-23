class RemoveColumnFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :category_id, :string
  end
end
