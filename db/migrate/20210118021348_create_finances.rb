class CreateFinances < ActiveRecord::Migration[6.1]
  def change
    create_table :finances do |t|
      t.string :tujuan_nabung

      t.timestamps
    end
  end
end
