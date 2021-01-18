class CreateBungas < ActiveRecord::Migration[6.1]
  def change
    create_table :bungas do |t|
      t.string :bunga
      t.integer :range_bunga

      t.timestamps
    end
  end
end
