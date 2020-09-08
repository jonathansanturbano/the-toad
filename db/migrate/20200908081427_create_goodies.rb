class CreateGoodies < ActiveRecord::Migration[6.0]
  def change
    create_table :goodies do |t|
      t.string :title
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
