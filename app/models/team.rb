class Team < ApplicationRecord
  mount_uploader :img, PhotoUploader
  has_many :origem, class_name: 'Move'   ,foreign_key: :origem_id
  has_many :destino, class_name: 'Move' ,foreign_key: :destino_id
end
