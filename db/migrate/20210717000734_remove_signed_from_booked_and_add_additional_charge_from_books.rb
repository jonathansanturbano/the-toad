class RemoveSignedFromBookedAndAddAdditionalChargeFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :category
    add_column :books, :signature_fee, :float, precision: 3, scale: 2
  end
end
