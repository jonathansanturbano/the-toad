class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :description
      t.datetime :time

      t.timestamps
    end
  end
end
