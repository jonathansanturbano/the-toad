class CreateFanarts < ActiveRecord::Migration[6.0]
  def change
    create_table :fanarts do |t|
      t.string :author

      t.timestamps
    end
  end
end
