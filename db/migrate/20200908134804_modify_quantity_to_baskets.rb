class ModifyQuantityToBaskets < ActiveRecord::Migration[6.0]
  def change
    remove_column :baskets, :quantity
    add_column :baskets, :quantity, :integer, default: 0
  end
end
