class Player < ApplicationRecord
  mount_uploader :img, PhotoUploader
  enum status: [ :active, :archived ]
  belongs_to :team
end
