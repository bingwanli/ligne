class BrandImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
