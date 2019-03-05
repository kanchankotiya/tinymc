class User < ApplicationRecord
  mount_uploader :file, ImageUploader
end
