class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :img
      t.string :video
      t.string :name
      t.date :dob
      t.string :nation
      t.string :weight
      t.string :height
      t.string :club
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
