class Midium < ApplicationRecord
  mount_uploader :img, PhotoUploader
  enum status: [ :active, :archived ]
end
