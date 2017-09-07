class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.string :img
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
