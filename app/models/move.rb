class Move < ApplicationRecord
  belongs_to :player
  belongs_to :origem, class_name: 'Team',foreign_key: :origem_id
  belongs_to :destino, class_name: 'Team',foreign_key: :destino_id
  enum status: [ :active, :archived ]
end
