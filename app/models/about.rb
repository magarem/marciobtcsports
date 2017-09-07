class About < ApplicationRecord
  mount_uploader :img, PhotoUploader
  enum status: [ :active, :archived ]
end
