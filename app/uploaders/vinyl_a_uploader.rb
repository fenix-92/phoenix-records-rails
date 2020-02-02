class VinylAUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_picture']

  version :standard do
    process :resize_to_fill => [500, 500, :north]
  end

  version :thumbnail do
    resize_to_fit(100, 100)
  end

  version :admin do
    resize_to_fit(65, 65)
  end
end
