class RecordCompany < ApplicationRecord
  mount_uploader :image_label, LabelUploader
end
