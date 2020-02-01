class BackUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
