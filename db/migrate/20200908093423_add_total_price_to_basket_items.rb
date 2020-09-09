class AddTotalPriceToBasketItems < ActiveRecord::Migration[6.0]
  def change
    add_column :basket_items, :total_price_item, :float
  end
end
