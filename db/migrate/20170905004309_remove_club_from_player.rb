class RemoveClubFromPlayer < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :club, :string
  end
end
