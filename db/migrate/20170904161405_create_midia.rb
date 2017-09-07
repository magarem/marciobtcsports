class CreateMidia < ActiveRecord::Migration[5.1]
  def change
    create_table :midia do |t|
      t.string :title
      t.date :data
      t.string :img
      t.text :txt
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
