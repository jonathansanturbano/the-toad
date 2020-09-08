class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :color
      t.string :age
      t.string :material
      t.integer :pages
      t.integer :year
      t.float :price
      t.string :category
      t.string :size

      t.timestamps
    end
  end
end
