class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.references :player, foreign_key: true
      t.date :data
      t.references :origem, foreign_key: true
      t.references :destino, foreign_key: true
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
