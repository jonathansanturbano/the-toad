class CreateHomephotos < ActiveRecord::Migration[6.0]
  def change
    create_table :homephotos do |t|
      t.integer :order

      t.timestamps
    end
  end
end
