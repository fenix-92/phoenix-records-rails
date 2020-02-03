class Country < ApplicationRecord
  mount_uploader :image_flag, FlagUploader
end
