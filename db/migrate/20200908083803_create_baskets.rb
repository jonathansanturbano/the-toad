class CreateBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table :baskets do |t|
      t.integer :quantity
      t.string :price_cents
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "adding"

      t.timestamps
    end
  end
end
