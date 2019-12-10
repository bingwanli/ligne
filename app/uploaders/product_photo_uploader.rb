class ProductPhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
