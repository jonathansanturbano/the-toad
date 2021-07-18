class AddSignedToBasketItems < ActiveRecord::Migration[6.0]
  def change
    add_column :basket_items, :signed, :boolean, default: false
  end
end
