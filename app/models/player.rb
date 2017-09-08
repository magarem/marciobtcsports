class Player < ApplicationRecord
  mount_uploader :img, PhotoUploader
  enum status: [ :active, :archived ]
  enum position: [ :goalkeeper, :defenders, :full_back, :wing_back, :midfielders, :defending, :central, :playmaker, :wingers, :striker, :second_forward]
  belongs_to :team
end
