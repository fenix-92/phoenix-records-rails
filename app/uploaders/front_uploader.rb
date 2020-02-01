class FrontUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
