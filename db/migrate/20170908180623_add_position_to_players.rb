class AddPositionToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :position, :integer
  end
end
