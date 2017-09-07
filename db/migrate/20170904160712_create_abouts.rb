class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.string :img
      t.string :name
      t.text :txt
      t.string :email
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
