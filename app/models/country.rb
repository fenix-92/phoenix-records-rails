class Country < ApplicationRecord
  has_many :posts, :dependent => :delete_all
  mount_uploader :image_flag, FlagUploader,  dependent: :destroy
end
