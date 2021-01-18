class CreateTabungans < ActiveRecord::Migration[6.1]
  def change
    create_table :tabungans do |t|
      t.string :tujuan_nabung
      t.integer :target_dana
      t.integer :biaya_perbulan
      t.integer :tempo
      t.string :range_bunga
      t.integer :saldo_awal
      t.date :awal_nabung
      t.integer :bunga_id

      t.timestamps
    end
  end
end
