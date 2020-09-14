class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :category
      t.string :title
      t.string :author
      t.integer :percentage

      t.timestamps
    end
  end
end
